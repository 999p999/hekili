local addonName, Private = ...
local Prox = Private.Addon

local timers = {}

Private.Settings = {
    Silenced = false,
    Paused = false,
    AllModes = false,
    ReducedModesNum = 3,
    Mouseover = false,
	useCombatCheck = true, -- ADDED FOR TOGGLE COMBAT MODE
	useAutoTarget = true,
	useInterrupts = true,
	useMOInterrupts = true,
	ThresholdValue = 0,
}

Private.Modes = { "automatic", "single", "aoe", "dual", "reactive" }
Private.Toggles = {
	{ db = "pause" },
	{ db = "interrupts" },
	{ db = "M.Over Interrupts" },
	{ db = "mode" },
	{ db = "custom1" },
	{ db = "custom2" },
	{ db = "cooldowns" },
	{ db = "defensives" },
	{ db = "potions" },
	{ db = "combat Mode" }, -- ADDED FOR COMBAT MODE BUTTON
	{ db = "auto Target" }, -- ADDED FOR AUTO TARGET BUTTON


}

Private.StartInterruptAddon = function()
    if not isEnabled then
        isEnabled = true
        --print("Target Interrupt System Enabled")
    end
end

Private.StopInterruptAddon = function()
    if isEnabled then
        isEnabled = false
        if castingFrame then
            castingFrame:Hide()
        end
        isCasting = false
        --print("Target Interrupt System Disabled")
    end
end


Private.InterruptInfo = {
	DoInterrupt = true,
	InterruptMin = 0,
	InterruptMax = 100,
}

Private.RecommendationOverride = {
	Active = false,
	Keybind = "",
	Texture = "",
	SpellID = 0,
}

function Prox.TFind(tbl, value)
	for k, v in pairs(tbl) do
		if v == value then
			return k
		end
	end
end

function Prox:PrintWithCheck(inputString)
	if not Private.Settings.Silenced then
		self:Print(inputString)
	end
end

function Prox.TogglePrint(setting, state)
	return string.format("'%s' is now %s", setting:upper(), state and "|cFF2ecc71Enabled" or "|cFFe74c3cDisabled")
end

function Prox.ErrorPrint(errorText)
	return string.format("|cFFe74c3cAn error occured: (%s)", errorText)
end

function Prox:TogglePause(timed)
	Hekili:TogglePause()
	Private.Settings.Paused = Hekili.Pause
	Private.Visibility.Paused = Hekili.Pause
	if timed then
		timed = tonumber(timed)
		if timed then
			self:PrintWithCheck(self.TogglePrint("Paused", Private.Settings.Paused) .. " For " .. timed .. "s")
			if timers["pause"] and not timers["pause"]:IsCancelled() then
				timers["pause"]:Cancel()
			end
			timers["pause"] = C_Timer.NewTimer(timed, function()
				self:TogglePause()
			end)
			return
		end
	end
	self:PrintWithCheck(self.TogglePrint("Paused", Private.Settings.Paused))
end

function Prox:ToggleMode(index)
	if not index then
		index = (self.TFind(Private.Modes, Hekili:GetToggleState("mode")) or 0) + 1
		index = index > (Private.Settings.AllModes and #Private.Modes or Private.Settings.ReducedModesNum) and 1
			or index
	end
	local modeName = Private.Modes[index]
	Hekili:SetMode(modeName)
	self:PrintWithCheck(string.format("Changed mode to '%s'.", modeName:upper()))
	Hekili:ForceUpdate("HEKILI_TOGGLE", true)
end

function Prox:ToggleOption(option) 
	local found = false              
	for _, val in ipairs(Private.Toggles) do
		found = found or val.db == option
	end
	if found then
		Hekili:FireToggle(option)
	else
		self:PrintWithCheck(self.ErrorPrint(string.format("Couldn't find toggle '%s'", option)))
	end
	Hekili:ForceUpdate("HEKILI_TOGGLE", true)
end



-- MIGHT BE UNUSABLE , JUST LEAVED IT SINCE IT'S NOT BUGGING CODE. IF UNNECESSARY, CAN BE DELETED.
function Prox:ToggleCombatCheck()
    Private.Settings.useCombatCheck = not Private.Settings.useCombatCheck
    --print("Combat Check is now " .. (Private.Settings.useCombatCheck and "enabled" or "disabled"))
end

-- COMBAT MODE BUTTON COLOR
local colors = {
    ACTIVE = { r = 1, g = 1, b = 0 },    
    INACTIVE = { r = 0, g = 0, b = 1 },  
}

-- COMBAT MODE BUTTON COLOR
function Prox.CheckAutoTargetColor()
    local colorType = Private.Settings.useAutoTarget and "ACTIVE" or "INACTIVE"
    local color = colors[colorType]
    local r, g, b = color.r, color.g, color.b
end

-- MIGHT BE UNUSABLE , JUST LEAVED IT SINCE IT'S NOT BUGGING CODE. IF UNNECESSARY, CAN BE DELETED.
function Prox:ToggleAutoTarget()
    Private.Settings.useAutoTarget = not Private.Settings.useAutoTarget
    --print("Combat Check is now " .. (Private.Settings.useAutoTarget and "enabled" or "disabled"))
end

-- COMBAT MODE BUTTON COLOR
local colors = {
    ACTIVE = { r = 1, g = 1, b = 0 },    
    INACTIVE = { r = 0, g = 0, b = 1 },  
}

-- MIGHT BE UNUSABLE , JUST LEAVED IT SINCE IT'S NOT BUGGING CODE. IF UNNECESSARY, CAN BE DELETED.
function Prox:ToggleMOInterrupt()
    Private.Settings.useMOInterrupts = not Private.Settings.useMOInterrupts
    --print("Combat Check is now " .. (Private.Settings.useAutoTarget and "enabled" or "disabled"))
end

-- MOINTR MODE BUTTON COLOR
local colors = {
    ACTIVE = { r = 1, g = 1, b = 0 },    
    INACTIVE = { r = 0, g = 0, b = 1 },  
}

-- COMBAT MODE BUTTON COLOR
function Prox.CheckInterruptColor()
    local colorType = Private.Settings.useInterrupts and "ACTIVE" or "INACTIVE"
    local color = colors[colorType]
    local r, g, b = color.r, color.g, color.b
end

function Prox:SlashCommand(msg)
	if self:VectorModule() then
		return
	end
	msg = msg:lower()
	local args = {}
	for arg in msg:gmatch("%S+") do
		table.insert(args, arg)
	end

	-- Help komutunu ekledik
	if args[1] == "help" then
		-- Frame oluşturma
		if not ProxHelpFrame then
			ProxHelpFrame = CreateFrame("Frame", "ProximaHelpFrame", UIParent, "BasicFrameTemplateWithInset")
			ProxHelpFrame:SetSize(650, 250)  -- Frame boyutu
			ProxHelpFrame:SetPoint("CENTER") -- Ortada göster

			-- Frame başlığı
			ProxHelpFrame.title = ProxHelpFrame:CreateFontString(nil, "OVERLAY")
			ProxHelpFrame.title:SetFontObject("GameFontHighlight")
			ProxHelpFrame.title:SetPoint("CENTER", ProxHelpFrame.TitleBg, "CENTER", 0, 0)
			ProxHelpFrame.title:SetText("PROXIMA")

			-- Metin alanı
			ProxHelpFrame.text = ProxHelpFrame:CreateFontString(nil, "OVERLAY")
			ProxHelpFrame.text:SetFontObject("GameFontNormal")
			ProxHelpFrame.text:SetJustifyH("LEFT")
			ProxHelpFrame.text:SetPoint("TOPLEFT", 10, -40)
			ProxHelpFrame.text:SetText("Available Commands:\n" ..
				"/prox pause -- Pauses the rotation.\n" ..
				"/prox mode -- Changes mode of rotation (Single-Aoe-Automatic).\n" ..
				"/prox toggle cooldowns -- Toggles Cooldowns.\n" ..
				"/prox toggle defensives -- Toggles Defensives.\n" ..
				"/prox toggle potions -- Toggles Potions.\n" ..
				"/prox toggle custom1 -- Toggles custom1 toggle.\n" ..
				"/prox toggle custom2 -- Toggles custom2 toggle.\n" ..
				"/prox mouseover -- Toggles Menu Mouseover.\n" .. 
				"/prox menu -- Toggles Menu.\n" .. 
				"/prox create macros -- Creates base toggle macros.\n" ..
				"/prox que SpellID -- Spellque feature. Will queue any SpellID into rotation when used as a macro.\n" ..
				"\nHave fun :)") 



			-- Gösterildiğinde gizleme fonksiyonu ekleyelim
			ProxHelpFrame:SetScript("OnHide", function(self)
				self:Hide() -- Frame kapatıldığında tamamen gizlenir
			end)
		end

		-- Frame'i göster
		ProxHelpFrame:Show()
		return
	end





	
	if args[1] == "silence" then
		Private.Settings.Silenced = not Private.Settings.Silenced
		self:Print(self.TogglePrint("Silenced", Private.Settings.Silenced))
	elseif args[1] == "combat Mode" then
		Prox:ToggleCombatCheck()
	elseif args[1] == "auto Target" then
		Prox:ToggleAutoTarget()
	elseif args[1] == "interrupts" then
		Prox:ToggleInterrupt()
	elseif args[1] == "pause" then
		self:TogglePause(args[2])
	elseif args[1] == "mode" then
		local num = tonumber(args[2])
		self:ToggleMode(num)
	elseif args[1] == "toggle" then
		self:ToggleOption(args[2])
	elseif args[1] == "allmodes" then
		Private.Settings.AllModes = not Private.Settings.AllModes
		self:PrintWithCheck(self.TogglePrint("All Modes", Private.Settings.AllModes))
	elseif args[1] == "create" then
		if args[2] == "macros" then
			for _, macro in ipairs(Private.Toggles) do
				local macroID = GetMacroIndexByName(macro.db)
				if not macroID or macroID == 0 then
					CreateMacro(macro.db, "INV_MISC_QUESTIONMARK", "/prox toggle " .. macro.db)
				end
			end
			self:PrintWithCheck("Created Macros.")
		elseif args[2] == "delete" then
			for _, macro in ipairs(Private.Toggles) do
				if GetMacroInfo(macro.db) then
					---@diagnostic disable-next-line: redundant-parameter
					DeleteMacro(macro.db)
				end
			end
			self:PrintWithCheck("Deleted Macros.")
		else
			self:PrintWithCheck(
				self.ErrorPrint(string.format("'%s' Is not a valid macro command (Only create & delete)", args[2]))
			)
		end
	elseif args[1] == "no" then
		if args[2] == "toggle" then
			self:ToggleInterruptsx()
			return
		elseif args[2] == "sety" then
			local minVal, maxVal = args[3]:match("(%d+)-(%d+)")
			minVal, maxVal = tonumber(minVal), tonumber(maxVal)
			minVal, maxVal = min(minVal, 100), min(maxVal, 100)
			if minVal > maxVal then
				self:PrintWithCheck(
					self.ErrorPrint(string.format("Min Value is Higher than Max Value: %d > %d", minVal, maxVal))
				)
			else
				Private.InterruptInfo.InterruptMin, Private.InterruptInfo.InterruptMax = minVal, maxVal
				self:PrintWithCheck(
					string.format("Interrupt Percentage Min set to %d and Max set to %d", minVal, maxVal)
				)
			end
			return
		end
		self:PrintWithCheck(self.ErrorPrint(string.format("Invalid Arguments: %s", msg)))

	elseif args[1] == "menu" then
		self:ToggleMenuVisibility()
		self:PrintWithCheck(self.TogglePrint("Menu Visibility", self.IsMenuVisible()))
	
	elseif args[1] == "mouseover" then
		self:ToggleMouseover()
		self:PrintWithCheck(self.TogglePrint("Menu Mouseover", Private.Settings.Mouseover))
	
	elseif args[1] == "que" then
		if not args[2] then
			self:PrintWithCheck(
				self.ErrorPrint(
					"You need to include a valid Spell ID in your Recommendation."
				)
			)
			return
		end
		local spellID = tonumber(args[2])
		if not spellID then
			self:PrintWithCheck(
				self.ErrorPrint(
					string.format("%s is not a valid Spell ID!", args[2])
				)
			)
			return
		end
	
		-- Get spell information
		local spellInfo = C_Spell.GetSpellInfo(spellID)
		if not spellInfo or not spellInfo.name then
			self:PrintWithCheck(
				self.ErrorPrint("Couldn't get Spell Name for the provided Spell ID.")
			)
			return
		end
	
		-- Convert spell name to the format used in the database
		local spellName = spellInfo.name:gsub("%s+", "_"):gsub("[%-']", ""):lower()
		local spellIcon = spellInfo.iconID
		local spellInfoDB = Hekili.KeybindInfo[spellName]
		if not spellInfoDB then
			self:PrintWithCheck(
				self.ErrorPrint(string.format("%s is not a valid spell Name!", spellName))
			)
			return
		end
	
		-- Determine the keybind
		local bind = ""
		for _, v in pairs(spellInfoDB.upper) do
			bind = v
			break
		end
	
		-- Fetch cooldown information
		local spellCooldownInfo = C_Spell.GetSpellCooldown(spellID)
		if not spellCooldownInfo then
			self:PrintWithCheck("Could not retrieve cooldown information.")
			return
		end
	
		local start, duration, isEnabled = spellCooldownInfo.startTime, spellCooldownInfo.duration, spellCooldownInfo.isEnabled
	
		-- Debugging: Print the values
		--self:PrintWithCheck(string.format("Cooldown Info: Start=%s, Duration=%s, IsEnabled=%s", tostring(start), tostring(duration), tostring(isEnabled)))
	
		-- Check if the cooldown information was retrieved
		if start == nil or duration == nil then
			self:PrintWithCheck("Could not retrieve cooldown information.")
			return
		end
	
		-- Check if the spell is on cooldown
		if duration and duration > 1.5 then
			self:PrintWithCheck("The recommended spell is currently on cooldown.")
			return
		end
	
		Private.RecommendationOverride = {
			Active = true,
			Keybind = bind,
			Texture = spellIcon,
			SpellID = spellID,
		}
	
	else
		self:PrintWithCheck(self.ErrorPrint(string.format("Couldn't find command: %s", msg)))
	end
end
