local addonName, Private = ...
local Prox = Private.Addon
if Prox:VectorModule() then
    return
end

local class = select(2, UnitClass("player"))
local stealthFrame
local autoStealthEnabled = true

local function UpdateStealthFrame()
    local hekiliPaused = Hekili.Pause

    if hekiliPaused then
        if stealthFrame then
            stealthFrame:Hide()
        end
        return 
    end

    if not stealthFrame then
        stealthFrame = CreateFrame("Frame", "MyGreenFrame", UIParent)
        stealthFrame:SetSize(0.6, 0.6)
        stealthFrame:SetPoint("TOPLEFT", 0, 0)
        
        stealthFrame.texture = stealthFrame:CreateTexture(nil, "BACKGROUND")
        stealthFrame.texture:SetAllPoints(true)
        stealthFrame.texture:SetColorTexture(0.6, 0.6, 0.6, 1) 
    end
    
    local spellID
    local cooldown
    if class == "ROGUE" then
        spellID = 1784 -- Rogue Stealth spell ID
        cooldown = 2 
    elseif class == "DRUID" and GetSpecialization() == 2 then 
        spellID = 5215 -- Druid Prowl spell ID
        cooldown = 10 
    end
    
    if spellID and IsPlayerSpell(spellID) then
        local spellCooldownData = C_Spell.GetSpellCooldown(spellID)
        local start = spellCooldownData.startTime
        local duration = spellCooldownData.duration
        local isOnCooldown = (start > 0 and duration > 0)
        if autoStealthEnabled and not IsStealthed() and not isOnCooldown and not UnitAffectingCombat("player") and not IsMounted() and not UnitIsDead("player") and not ChatEdit_GetActiveWindow() and not IsFlying() then
            stealthFrame:Show()
        else
            stealthFrame:Hide()
        end
    else
        stealthFrame:Hide()
    end
end

local function ToggleAutoStealth()
    autoStealthEnabled = not autoStealthEnabled
    if autoStealthEnabled then
        print("Auto Stealth enabled.")
    else
        print("Auto Stealth disabled.")
        stealthFrame:Hide()
    end
end

SLASH_AUTOSTEALTH1 = "/autostealth"
SlashCmdList["AUTOSTEALTH"] = function()
    autoStealthEnabled = not autoStealthEnabled
    if autoStealthEnabled then
        print("Auto Stealth enabled.")
    else
        print("Auto Stealth disabled.")
        stealthFrame:Hide()
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("SPELLS_CHANGED")
frame:RegisterEvent("UPDATE_STEALTH")
frame:RegisterEvent("PLAYER_REGEN_ENABLED")
frame:RegisterEvent("PLAYER_REGEN_DISABLED")
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_ENTERING_WORLD" or event == "SPELLS_CHANGED" or event == "UPDATE_STEALTH" then
        UpdateStealthFrame()
    elseif event == "PLAYER_REGEN_ENABLED" or event == "PLAYER_REGEN_DISABLED" then
        UpdateStealthFrame()
    end
end)

-- Function to continuously check stealth status
local function ContinuousCheck()
    UpdateStealthFrame()
    C_Timer.After(0.1, ContinuousCheck) 
end

-- Start the continuous check
ContinuousCheck()

-- Expiration check for StealthFrame
Prox.ExpireStealthFrame = function()
    if stealthFrame then
        stealthFrame:Hide()
        stealthFrame = nil
    end
end
