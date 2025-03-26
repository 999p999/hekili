local addonName, Private = ...
local Prox = Private.Addon
if Prox:VectorModule() then
	return
end

local lastBind, lastInt = "", false

Private.Visibility = {
	ChatOpen = false,
	GCDActive = false,
	InvalidTarget = false,
	Mounted = false,
	Dead = false,
	Paused = false,
	Channeling = false,
	Casting = false,
    LShiftDown = false,
    Pause = false,
}

local function SaveCombatCheckState()
    return Private.Settings.useCombatCheck
end

local function LoadCombatCheckState(state)
    Private.Settings.useCombatCheck = state
    Prox.UpdateVisibility()
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, addon)
    if addon == addonName then
        LoadCombatCheckState(ProximaSaved and ProximaSaved.useCombatCheck)
    end
end)

local function SaveAutoTargetState()
    return Private.Settings.useAutoTarget
end

local function LoadAutoTargetState(state)
    Private.Settings.useAutoTarget = state
    Prox.UpdateVisibility()
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, addon)
    if addon == addonName then
        LoadAutoTargetState(ProximaSaved and ProximaSaved.useAutoTarget)
    end
end)

local function SaveMOInterruptState()
    return Private.Settings.useMOInterrupts
end

local function LoadMOInterruptState(state)
    Private.Settings.useMOInterrupts = state
    Prox.UpdateVisibility()
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, addon)
    if addon == addonName then
        LoadMOInterruptState(ProximaSaved and ProximaSaved.useMOInterrupts)
    end
end)

local function SaveInterruptState()
    return Private.Settings.useInterrupts
end

local function LoadInterruptState(state)
    Private.Settings.useInterrupts = state
    Prox.UpdateVisibility()

    if state then
        ChatFrame1EditBox:SetText("/startinterrupt")
        ChatEdit_SendText(ChatFrame1EditBox, 0)
    else
        ChatFrame1EditBox:SetText("/stopinterrupt")
        ChatEdit_SendText(ChatFrame1EditBox, 0)
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function(self, event, addon)
    if addon == addonName then
        LoadInterruptState(ProximaSaved and ProximaSaved.useInterrupts)
    end
end)



local trainingDummyNames = { "Cleave Training Dummy", "PvP Training Dummy", "Animated Duelist", "Dungeoneer's Training Dummy", "Boulderfist", "Normal Tank Dummy", "Training Dummy", "Reanimation Totem", UnitName("player"), "Spirit of Gold", "Nokhud Saboteur", "Nokhud Stormcaster", "Draconic Illusion", "Ashtongue Channeler", "The Red Gulper", "The Black Gulper", "The Blue Gulper", "Frost Tomb", "Frozen Shroud", "Kyrakka", "Detonating Crystal", "Hardened Crystal", "Ashtongue Sorcerer", "Stormsurge Totem", "Dragonfire Golem" }

local function IsTrainingDummy(unit)
    local unitName = UnitName(unit)
    if not unitName then
        return false 
    end

    if UnitIsUnit(unit, "player") or UnitIsFriend("player", unit) then
        return false
    end

    for _, name in ipairs(trainingDummyNames) do
        if string.find(unitName, name) then
            return true 
        end
    end

    return false 
end

local function IsInvalidTarget()
    if not UnitExists("target") or IsMounted() or UnitIsDead("target") or UnitIsDead("player") or (GetShapeshiftFormID() == 3) then
        return true
    else
        local isTrainingDummy = IsTrainingDummy("target")

        if isTrainingDummy then
            return false
        else
            local reaction = UnitReaction("player", "target")

            if reaction and reaction >= 5 then 
                if reaction <= 4 then 
                    return not UnitAffectingCombat("target") 
                else
                    return true
                end
            elseif UnitIsFriend("player", "target") or not UnitCanAttack("player", "target") then
                return true  
            end

            return Private.Settings.useCombatCheck and not UnitAffectingCombat("target")
        end
    end
end


function Prox:ToggleCombatCheck()
    Private.Settings.useCombatCheck = not Private.Settings.useCombatCheck 

    self:PrintWithCheck(self.TogglePrint("Combat Mode", Private.Settings.useCombatCheck))

    Prox.CheckCombatModeColor()
    ProximaSaved.useCombatCheck = SaveCombatCheckState()
end

function Prox.CheckCombatModeColor()
    local colors = {
        ACTIVE = { r = 1, g = 1, b = 0 },    
        INACTIVE = { r = 0, g = 0, b = 1 },  
    }

    local colorType = Private.Settings.useCombatCheck and "ACTIVE" or "INACTIVE"
    local color = colors[colorType]
    local r, g, b = color.r, color.g, color.b

    ProximaSaved.useCombatCheck = SaveCombatCheckState()
end



-- AUTO TARGET FRAME
local x5Framex = UIParent:CreateTexture()
x5Framex:SetPoint("TOPLEFT", 0, 0)
x5Framex:SetSize(0.6, 0.6)
x5Framex:SetDrawLayer("OVERLAY", 7)
x5Framex:SetColorTexture(0, 255, 0) 

function Prox.Updatex5FramexVisibility()
    if Private.Settings.useAutoTarget then
        x5Framex:Show()
    else
        x5Framex:Hide()
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("PLAYER_TARGET_CHANGED")
frame:RegisterEvent("PLAYER_REGEN_ENABLED")
frame:RegisterEvent("PLAYER_REGEN_DISABLED")
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_ENTERING_WORLD" or event == "PLAYER_TARGET_CHANGED" or event == "PLAYER_REGEN_ENABLED" or event == "PLAYER_REGEN_DISABLED" then
        local inCombat = UnitAffectingCombat("player")
        local hasTarget = UnitExists("target")
        
        if not Private.Settings.useAutoTarget then
            x5Framex:Hide()
        else
            if inCombat and not hasTarget then
                x5Framex:Show()
            else
                x5Framex:Hide()
            end
        end
    end
end)




function Prox:ToggleAutoTarget()
    Private.Settings.useAutoTarget = not Private.Settings.useAutoTarget 

    self:PrintWithCheck(self.TogglePrint("Auto Target", Private.Settings.useAutoTarget))

    Prox.CheckAutoTargetColor()
    ProximaSaved.useAutoTarget = SaveAutoTargetState()
end

function Prox.CheckAutoTargetColor()
    local colors = {
        ACTIVE = { r = 1, g = 1, b = 0 },    
        INACTIVE = { r = 0, g = 0, b = 1 },  
    }

    local colorType = Private.Settings.useAutoTarget and "ACTIVE" or "INACTIVE"
    local color = colors[colorType]
    local r, g, b = color.r, color.g, color.b

    ProximaSaved.useAutoTarget = SaveAutoTargetState()
end

function Prox:ToggleMOInterrupt()

    Private.Settings.useMOInterrupts = not Private.Settings.useMOInterrupts 

    self:PrintWithCheck(self.TogglePrint("Mouseover Interrupt", Private.Settings.useMOInterrupts))

    Prox.CheckMOInterruptColor()
    ProximaSaved.useMOInterrupts = SaveMOInterruptState()
end

function Prox.CheckMOInterruptColor()
    local colors = {
        ACTIVE = { r = 1, g = 1, b = 0 },    
        INACTIVE = { r = 0, g = 0, b = 1 },  
    }

    local colorType = Private.Settings.useMOInterrupts and "ACTIVE" or "INACTIVE"
    local color = colors[colorType]
    local r, g, b = color.r, color.g, color.b

    ProximaSaved.useMOInterrupts = SaveMOInterruptState()
end

function Prox:ToggleInterrupt()
    Private.Settings.useInterrupts = not Private.Settings.useInterrupts

    if Private.Settings.useInterrupts then
        ChatFrame1EditBox:SetText("/startinterrupt")
        ChatEdit_SendText(ChatFrame1EditBox, 0)
    else
        ChatFrame1EditBox:SetText("/stopinterrupt")
        ChatEdit_SendText(ChatFrame1EditBox, 0)
    end

    isProgOn = not isProgOn

    useInterrupts = not useInterrupts
    
    self:PrintWithCheck(self.TogglePrint("Interrupt", Private.Settings.useInterrupts))

    Prox.CheckInterruptColor()

    ProximaSaved.useInterrupts = Private.Settings.useInterrupts
end

function Prox.CheckInterruptColor()
    local colors = {
        ACTIVE = { r = 1, g = 1, b = 0 },    
        INACTIVE = { r = 0, g = 0, b = 1 },  
    }

    local colorType = Private.Settings.useInterrupts and "ACTIVE" or "INACTIVE"
    local color = colors[colorType]
    local r, g, b = color.r, color.g, color.b

    ProximaSaved.useInterrupts = Private.Settings.useInterrupts
end

SLASH_TOGGLECOMBATCHECK1 = "/combatmode"
SlashCmdList["TOGGLECOMBATCHECK"] = function() Prox:ToggleCombatCheck() end

-- XPRESS LOGO ANIMATION -- FIXED TO FIRST MOVEMENT OF PLAYER
local myFrame = CreateFrame("Frame", "MyIconFrame", UIParent)
myFrame:SetSize(150, 150)
myFrame:SetPoint("CENTER", UIParent, "CENTER", -10, 0)
myFrame:Hide()  -- Hide the frame initially

local myTexture = myFrame:CreateTexture(nil, "OVERLAY")
myTexture:SetAllPoints()
myTexture:SetTexture("Interface\\AddOns\\MMedia\\logo.tga")

local animGroup = myFrame:CreateAnimationGroup()

local translation = animGroup:CreateAnimation("Translation")
translation:SetDuration(1)

local alpha = animGroup:CreateAnimation("Alpha")
alpha:SetFromAlpha(100)
alpha:SetToAlpha(20)
alpha:SetDuration(1)
alpha:SetOrder(1)
alpha:SetSmoothing("OUT")

local function OnLoginSuccess()
    myFrame:Show()
    animGroup:Play()

    C_Timer.After(3, function()
        myFrame:Hide()
    end)
end

local playerMoving = false

local addonLoadedFrame = CreateFrame("Frame")
addonLoadedFrame:RegisterEvent("PLAYER_STARTED_MOVING")
addonLoadedFrame:SetScript("OnEvent", function(_, event, addonName)
    if event == "PLAYER_STARTED_MOVING" and not playerMoving then
        OnLoginSuccess()
        playerMoving = true
    end
end)

function Prox:Printer()
	if self:VectorModule() then
		Prox.UpdateVisibility(true) 
		return
	end
	-- Every Frame Event
	self:CheckInterrupt()
	self:CheckOverride()
	self:CheckRotation()
	self:CheckGCD()
	self:CheckOnChannelStart() 
    self:CheckOnCastStart() 
	self:CheckMounted() 
end

function Prox:CheckGCD()
    local time = GetTime()
    local spellID = 61304
    local cooldownInfo = C_Spell.GetSpellCooldown(spellID)

    if cooldownInfo and cooldownInfo.startTime then
        local gcdEndTime = cooldownInfo.startTime + cooldownInfo.duration
        if time > gcdEndTime or gcdEndTime - time <= 0.6 then
            Private.Visibility.GCDActive = false
        else
            Private.Visibility.GCDActive = true
        end
    else
        Private.Visibility.GCDActive = true
    end

    Prox.UpdateVisibility()
end

function Prox:CheckTarget()
	Private.Visibility.InvalidTarget = IsInvalidTarget()
	Prox.UpdateVisibility()
end

function Prox:CheckMounted()
	Private.Visibility.Mounted = IsMounted()
	Prox.UpdateVisibility()
end

function Prox:CheckAlive()
	Private.Visibility.Dead = UnitIsDeadOrGhost("player")
	Prox.UpdateVisibility()
end

function Prox:CheckOnChannelStart() 
    local channelName, _, _, _, _, _, _, notInterruptible = UnitChannelInfo("player")

    if channelName then
        Private.Visibility.Channeling = true
    else
        Private.Visibility.Channeling = false
    end

    Prox.UpdateVisibility()
end

function Prox:CheckOnCastStart(_, unit, _, spellID) 
    local casting = UnitCastingInfo("player")

	if casting then
		Private.Visibility.Casting = true
	else
		Private.Visibility.Casting = false
    end

    Prox.UpdateVisibility()
end

function Prox:CheckRotation()
	if not Hekili or not Hekili.DisplayPool or not Hekili.DisplayPool.Primary then
		return
	end
	local rotationList = Hekili.DisplayPool.Primary.Recommendations
	if rotationList and rotationList[1] then
		if (rotationList[1].keybind ~= lastBind) or (lastInt ~= Private.InterruptInfo.DoInterrupt) then
			lastBind = rotationList[1].keybind
			Private.colorFrame(lastBind)
		end
	end
end

function Prox:CheckToggles(toggleName, state)
	if toggleName then
		if toggleName == "pause" then
			Private.Settings.Paused = state
			Private.Visibility.Paused = state
			Private.Toggles[1].frame:UpdateState()
		end
		return
	end
	for _, toggle in ipairs(Private.Toggles) do
		if toggle.frame then
			toggle.frame:UpdateState()
		end
	end
end

function Prox:CheckInterrupt()
	Private.InterruptInfo.DoInterrupt = false
	if IsInvalidTarget() then
		return
	end
	local cast = { UnitCastingInfo }
	if not cast then
		return
	end
	if not cast[8] then -- Is Interruptable
		local startTime, endTime = cast[4], cast[5]
		if not startTime then
			return
		end
		local castDur = endTime - startTime
		local minTime = ((castDur / 100 * Private.InterruptInfo.InterruptMin) + startTime) / 1000
		local maxTime = ((castDur / 100 * Private.InterruptInfo.InterruptMax) + startTime) / 1000
		local now = GetTime()
		if now > minTime and now < maxTime then
			Private.InterruptInfo.DoInterrupt = true
		end
	end
end

function Prox:CheckOverride() 
    if Private.RecommendationOverride.Active then
        if UnitCastingInfo("player") then
            Private.RecommendationOverride.Active = false
            Hekili.DisplayPool.Primary.NewRecommendations = true
        else
            Hekili.DisplayPool.Primary.Recommendations[1].texture = Private.RecommendationOverride.Texture
            Hekili.DisplayPool.Primary.Recommendations[1].keybind = Private.RecommendationOverride.Keybind
            Hekili:UpdateDisplayVisibility()
        end
    end
end

function Prox:CheckCastDone(_, unit, _, spellID) 
    if Private.RecommendationOverride.Active then
        if unit == "player" and Private.RecommendationOverride.SpellID == spellID then
            Private.RecommendationOverride.Active = false
            if not UnitCastingInfo("player") then
                Hekili.DisplayPool.Primary.NewRecommendations = true
            end
        end
    end
end

function Prox:CheckCastSuccess(_, unit, _, _, spellID) 
    if Private.RecommendationOverride.Active and unit == "player" and Private.RecommendationOverride.SpellID == spellID then
        Hekili:UpdateDisplayVisibility()
    end
end

