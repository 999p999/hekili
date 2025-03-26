local addonName, Private = ...
local Prox = Private.Addon
if Prox:VectorModule() then
    return
end

-- Function to create a solid color texture
local function CreateSolidColorTexture(frame, r, g, b, a)
    if not frame.SolidColorTexture then
        frame.SolidColorTexture = frame:CreateTexture(nil, "BACKGROUND")
        frame.SolidColorTexture:SetAllPoints(frame)
    end

    r = tonumber(r) or 0
    g = tonumber(g) or 0
    b = tonumber(b) or 0
    a = tonumber(a) or 1

    frame.SolidColorTexture:SetColorTexture(r, g, b, a)
end

-- Interrupt spell cooldown check list
local interruptSpells = {
    ["WARRIOR"] = {
        ["ARMS"] = 6552, -- Pummel
        ["FURY"] = 6552, -- Pummel
        ["PROTECTION"] = 6552 -- Pummel
    },
    ["ROGUE"] = {
        ["ASSASSINATION"] = 1766, -- Kick
        ["OUTLAW"] = 1766, -- Kick
        ["SUBTLETY"] = 1766 -- Kick
    },
    ["MAGE"] = {
        ["ARCANE"] = 2139, -- Counterspell
        ["FIRE"] = 2139, -- Counterspell
        ["FROST"] = 2139 -- Counterspell
    },
    ["DRUID"] = {
        ["BALANCE"] = 106839, -- Skull Bash
        ["FERAL"] = 106839, -- Skull Bash
        ["GUARDIAN"] = 106839, -- Skull Bash
        ["RESTORATION"] = 106839 -- Skull Bash
    },
    ["PALADIN"] = {
        ["HOLY"] = 96231, -- Rebuke
        ["PROTECTION"] = 96231, -- Rebuke
        ["RETRIBUTION"] = 96231 -- Rebuke
    },
    ["SHAMAN"] = {
        ["ELEMENTAL"] = 57994, -- Wind Shear
        ["ENHANCEMENT"] = 57994, -- Wind Shear
        ["RESTORATION"] = 57994 -- Wind Shear
    },
    ["PRIEST"] = {
        ["SHADOW"] = 15487, -- Silence
        ["DISCIPLINE"] = 2139, -- Counterspell (PvP Talent)
        ["HOLY"] = 2139 -- Counterspell (PvP Talent)
    },
    ["DEATHKNIGHT"] = {
        ["BLOOD"] = 47528, -- Mind Freeze
        ["FROST"] = 47528, -- Mind Freeze
        ["UNHOLY"] = 47528 -- Mind Freeze
    },
    ["HUNTER"] = {
        ["BEAST MASTERY"] = 147362, -- Counter Shot
        ["MARKSMANSHIP"] = 147362, -- Counter Shot
        ["SURVIVAL"] = 187707 -- Muzzle
    },
    ["MONK"] = {
        ["BREWMASTER"] = 116705, -- Spear Hand Strike
        ["MISTWEAVER"] = 116705, -- Spear Hand Strike
        ["WINDWALKER"] = 116705 -- Spear Hand Strike
    },
    ["DEMONHUNTER"] = {
        ["HAVOC"] = 183752, -- Disrupt
        ["VENGEANCE"] = 183752 -- Disrupt
    },
    ["EVOKER"] = {
        ["DEVASTATION"] = 351338, -- Quell
        ["PRESERVATION"] = 351338 -- Quell
    }
}

-- Create the MouseoverFrame
local MouseoverFrame = CreateFrame("Frame", "MouseoverFrame", UIParent)
MouseoverFrame:SetWidth(0.6)
MouseoverFrame:SetHeight(0.6)
MouseoverFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT")
MouseoverFrame:SetFrameStrata("TOOLTIP")


-- Set the texture for the frame
CreateSolidColorTexture(MouseoverFrame, 0/255, 30/255, 0/255, 1) -- Black color with 100% opacity

-- Function to check if a spell is interruptible
local function IsInterruptible(unit)
    local spell, _, _, _, _, _, _, notInterruptible = UnitCastingInfo(unit)
    if spell and not notInterruptible then
        return true
    end
    spell, _, _, _, _, _, notInterruptible = UnitChannelInfo(unit)
    if spell and not notInterruptible then
        return true
    end
    return false
end

-- Function to check spell cooldown and return remaining cooldown
local function GetSpellCooldownInfo(spellID)
    if not spellID or not IsSpellKnown(spellID) then
        return false, 0
    end

    local cooldownInfo = C_Spell.GetSpellCooldown(spellID)
    if not cooldownInfo then
        return false, 0
    end

    local start = cooldownInfo.startTime
    local duration = cooldownInfo.duration
    if start > 0 and duration > 0 then
        local remaining = (start + duration) - GetTime()
        return true, remaining
    end
    return false, 0
end

local function GetPlayerSpec()
    local _, playerClass = UnitClass("player")
    local currentSpec = GetSpecialization()
    if currentSpec then
        local specID, specName = GetSpecializationInfo(currentSpec)
        return playerClass, specName
    end
    return nil, nil
end


-- Event handler for player login and spec changes
local function OnEvent(self, event)
    if event == "PLAYER_LOGIN" or event == "ACTIVE_TALENT_GROUP_CHANGED" then
        local playerClass, specName = GetPlayerSpec()
        if playerClass and specName then
            specName = specName:upper()
            local spellID = interruptSpells[playerClass] and interruptSpells[playerClass][specName]
            MouseoverFrame.interruptSpellID = spellID or nil
        end
    end
end

-- OnUpdate function
local function OnUpdate()
    if Private.Settings.Paused then
        MouseoverFrame:Hide() -- Pause aktifse MouseoverFrame gizlenir
        return
    end
    
    if Private.Settings.useMOInterrupts and MouseoverFrame.interruptSpellID then
        local nameplates = C_NamePlate.GetNamePlates()
        for _, frame in ipairs(nameplates) do
            local unit = frame.UnitFrame and frame.UnitFrame.unit
            if unit and UnitIsUnit("mouseover", unit) and not UnitIsUnit("target", unit) then
                local isInterruptible = IsInterruptible(unit)
                local isOnCooldown, cooldownRemaining = GetSpellCooldownInfo(MouseoverFrame.interruptSpellID)

                if isInterruptible and not isOnCooldown then
                    MouseoverFrame:Show()
                    return
                end
            end
        end
    end
    MouseoverFrame:Hide()
end



-- Set up a frame to run the OnUpdate script
local UpdateFrame = CreateFrame("Frame")
UpdateFrame:SetScript("OnUpdate", OnUpdate)

-- Register events
MouseoverFrame:RegisterEvent("PLAYER_LOGIN")
MouseoverFrame:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
MouseoverFrame:SetScript("OnEvent", OnEvent)
