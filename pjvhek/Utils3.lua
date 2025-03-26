local addonName, Private = ...
local Prox = Private.Addon
if Prox:VectorModule() then
    return
end

local frame = CreateFrame("Frame")
local castingFrame = nil
local isCasting = false
local progressVisibilityThreshold = 0 -- Default threshold
local updateInterval = 0.1
local timeSinceLastUpdate = 0
local isEnabled = false

local classSpellIDs = {
    ["WARRIOR"] = {6552},
    ["MAGE"] = {2139},
    ["PALADIN"] = {96231},
    ["DEMONHUNTER"] = {183752},
    ["HUNTER"] = {147362, 187707},
    ["ROGUE"] = {1766},
    ["PRIEST"] = {15487},
    ["WARLOCK"] = {19647},
    ["DRUID"] = {78675, 106839},
    ["SHAMAN"] = {57994},
    ["MONK"] = {116705},
    ["DEATHKNIGHT"] = {47528},
    ["EVOKER"] = {351338}
}



local function CreateCastingFrame()
    castingFrame = CreateFrame("Frame", "CastingIndicator", UIParent)
    castingFrame:SetSize(0.6, 0.6)
    castingFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT")
    castingFrame:SetFrameLevel(800)

    local background = castingFrame:CreateTexture(nil, "BACKGROUND")
    background:SetAllPoints()
    background:SetColorTexture(0, 26/255, 0, 1)
    castingFrame.background = background

    local border = castingFrame:CreateTexture(nil, "BORDER")
    border:SetAllPoints()
    border:SetColorTexture(0, 26/255, 0, 1)
    castingFrame.border = border

    castingFrame:Hide()
end

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

local function GetInterruptSpellID()
    local _, class = UnitClass("player")
    if not class then return nil end
    return classSpellIDs[class] and classSpellIDs[class][1] or nil
end

local function StartInterruptAddon()
    if not isEnabled then
        isEnabled = true
        --print("Target Interrupt System Enabled")
    end
end

local function StopInterruptAddon()
    if isEnabled then
        isEnabled = false
        if castingFrame then
            castingFrame:Hide()
        end
        isCasting = false
        --print("Target Interrupt System Disabled")
    end
end


local function SaveInterruptState()
    return Private.Settings.useInterrupts
end

local function LoadInterruptState(state)
    Private.Settings.useInterrupts = state
    Prox.UpdateVisibility()

    if state then
        StartInterruptAddon()
    else
        StopInterruptAddon()
    end
end

local function ShowCastingFrame()
    if not castingFrame then CreateCastingFrame() end
    castingFrame:Show()
end

local function HideCastingFrame()
    if castingFrame then
        castingFrame:Hide()
    end
end

local function GetTargetCastingProgress()
    local spellName, _, _, startTime, endTime, _, _, notInterruptible = UnitCastingInfo("target")

    if not spellName or not startTime or not endTime or notInterruptible then
        return 0, 0, 0 -- Progress, total duration, elapsed time
    end

    local castDuration = (endTime - startTime) / 1000
    local currentTime = GetTime()
    local elapsed = currentTime - (startTime / 1000)
    local progress = (elapsed / castDuration) * 100

    return math.max(0, math.min(progress, 100)), castDuration, elapsed
end

local function DetectCasting()
    local currentThreshold = Private.Settings.ThresholdValue or 0

    if Private.Settings.Paused then
        HideCastingFrame()
        return
    end

    -- Eğer useInterrupts devre dışıysa veya eklenti aktif değilse, işlevi sonlandır
    if not Private.Settings.useInterrupts or not isEnabled then
        HideCastingFrame()
        isCasting = false
        return
    end

    local spellName, _, _, startTime, endTime, _, _, notInterruptible = UnitCastingInfo("target")
    if not spellName or notInterruptible then
        HideCastingFrame()
        isCasting = false
        return
    end

    local spellID = GetInterruptSpellID()
    if not spellID then
        HideCastingFrame()
        return
    end

    local isOnCooldown, remaining = GetSpellCooldownInfo(spellID)
    local progress, castDuration, elapsed = GetTargetCastingProgress()

    if not isOnCooldown and progress >= currentThreshold then
        if not isCasting then
            isCasting = true
            ShowCastingFrame()
        end
    else
        if isCasting then
            isCasting = false
            HideCastingFrame()
        end
    end
end

local function OnUpdate(self, elapsed)
    timeSinceLastUpdate = timeSinceLastUpdate + elapsed
    if timeSinceLastUpdate >= updateInterval then
        timeSinceLastUpdate = 0
        DetectCasting()
    end
end

frame:RegisterEvent("ADDON_LOADED")
frame:RegisterEvent("UNIT_SPELLCAST_START")
frame:RegisterEvent("UNIT_SPELLCAST_STOP")
frame:RegisterEvent("PLAYER_TARGET_CHANGED")

frame:SetScript("OnEvent", function(self, event, addon)
    if event == "ADDON_LOADED" and addon == addonName then
        LoadInterruptState(ProximaSaved and ProximaSaved.useInterrupts)
    elseif event == "UNIT_SPELLCAST_START" and UnitGUID("target") then
        DetectCasting()
    elseif event == "UNIT_SPELLCAST_STOP" and isCasting then
        isCasting = false
        HideCastingFrame()
    elseif event == "PLAYER_TARGET_CHANGED" then
        DetectCasting()
    end
end)

frame:SetScript("OnUpdate", OnUpdate)

SLASH_STARTINTERRUPT1 = "/startinterrupt"
SlashCmdList["STARTINTERRUPT"] = function()
    StartInterruptAddon()
    SaveInterruptState(true)
end

SLASH_STOPINTERRUPT1 = "/stopinterrupt"
SlashCmdList["STOPINTERRUPT"] = function()
    StopInterruptAddon()
    SaveInterruptState(false)
end

SLASH_SETTHRESHOLD1 = "/setthreshold"
SlashCmdList["SETTHRESHOLD"] = function(arg)
    local threshold = tonumber(arg)
    if threshold and threshold >= 0 and threshold <= 100 then
        Private.Settings.ThresholdValue = threshold
        --print("Threshold set to " .. threshold .. "%")
    else
        --print("Invalid threshold. Enter a number between 0 and 100.")
    end
end
