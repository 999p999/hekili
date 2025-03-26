local addonName, Private = ...
local Prox = Private.Addon

local bindToValue = {
	["^"] = 220,
	["´"] = 221,
	["BkSp"] = 8,
	["Ö"] = 192,
	["Ü"] = 186,
	["Ä"] = 222,
	["+"] = 187,
	["#"] = 187,
	["-"] = 189,
	[","] = 188,
	["."] = 190,
	["TAB"] = 9,
	["CAPS"] = 20,
	["SHIFT"] = 16,
	["CTRL"] = 17,
	["ALT"] = 18,
	["ENTER"] = 13,
	["LEFT"] = 37,
	["RIGHT"] = 39,
	["Up"] = 38,
	["Dn"] = 40,
	["NUMLOCK"] = 144,
	["N/"] = 111,
	["N*"] = 106,
	["N-"] = 109,
	["N+"] = 107,
	["N."] = 110,
	["PgUp"] = 33,
	["PgDn"] = 34,
	["Mw"] = 10, -- Need to find a available range for these 10-12 for MW and 1-7 for Mouse ?
	["MwU"] = 11, -- Need to find a available range for these 10-12 for MW and 1-7 for Mouse ?
	["MwD"] = 12, -- Need to find a available range for these 10-12 for MW and 1-7 for Mouse ?
}

for i = 0, 12 do
	if i > 0 then
		-- F Keys
		bindToValue["F" .. i] = 111 + i
		-- Mouse Buttons
		if i <= 7 then
			bindToValue["M" .. i] = 0 + i -- Need to find a available range for these 10-12 for MW and 1-7 for Mouse ?
		end
	end
	-- 0 - 9
	if i <= 9 then
		bindToValue[tostring(i)] = 48 + i
		bindToValue["N" .. i] = 96 + i -- Num Pad
	end
end

-- Alphabet
local abc = {
	"A",
	"B",
	"C",
	"D",
	"E",
	"F",
	"G",
	"H",
	"I",
	"J",
	"K",
	"L",
	"M",
	"N",
	"O",
	"P",
	"Q",
	"R",
	"S",
	"T",
	"U",
	"V",
	"W",
	"X",
	"Y",
	"Z",
}
for i, val in ipairs(abc) do
	bindToValue[val] = 64 + i
end

local bindingSubs = {
	"CAPS",
	"NUMLOCK",
	"TAB",
	"ENTER",
	"BkSp",
	"PgUp",
	"PgDn",
	"LEFT",
	"RIGHT",
	"Up",
	"Dn",
	"MwU",
	"MwD",
	"Mw",
	"M%d",
	"F%d",
	"N.",
	"/",
	"*",
	"-",
	"+",
	".$",
}

local modifierSubs = {
	{ "C", "CTRL" },
	{ "S", "SHIFT" },
	{ "A", "ALT" },
}

local function cutOut(fullString, part)
	local startPos, endPos = string.find(fullString, part)

	if startPos and endPos then
		local beforePart = string.sub(fullString, 1, startPos - 1)
		local afterPart = string.sub(fullString, endPos + 1)

		return beforePart .. afterPart
	end
end

local function reverseBind(bindString, full, base)
	if not bindString or bindString == "" then
		return full
	end
	local fullBind, baseDone = full or {}, base
	if not baseDone then
		for _, baseSub in ipairs(bindingSubs) do
			if bindString:match(baseSub) then
				local part = bindString:match(baseSub)
				tinsert(fullBind, part)
				return reverseBind(bindString:sub(1, #bindString - #part), fullBind, true)
			end
		end
	else
		for _, modifiers in ipairs(modifierSubs) do
			if bindString:match(modifiers[1]) then
				tinsert(fullBind, modifiers[2])
				return reverseBind(cutOut(bindString, modifiers[1]), fullBind, true)
			end
		end
	end
end

local bindToColor = {
	["1"] = {0, 0, 49},
	["2"] = {0, 0, 53},    
	["3"] = {0, 0, 57},     
	["4"] = {0, 0, 61},  
	["5"] = {0, 0, 65},   
	["6"] = {0, 0, 69},   
	["7"] = {0, 0, 73},    
	["8"] = {0, 0, 77},  
	["9"] = {0, 0, 81},  
	["0"] = {0, 0, 85},  
}

function Private.colorFrame(binding)
	local reversed = reverseBind(binding)
	local Shift, Ctrl, Alt, Interrupt, Key = "0", "0", "0", "0", 0
	if reversed and type(reversed) == "table" then
		for _, key in ipairs(reversed) do
			if key == "SHIFT" then
				Shift = "F"
			elseif key == "CTRL" then
				Ctrl = "F"
			elseif key == "ALT" then
				Alt = "F"
			elseif Private.InterruptInfo.DoInterrupt then
				Interrupt = "F"
			else
				Key = bindToValue[key] or 0
			end
		end
	end
	Prox.ChangeFrameColor(string.format("FF%s%s%s%s%02X", Shift, Ctrl, Alt, Interrupt, Key))
end



