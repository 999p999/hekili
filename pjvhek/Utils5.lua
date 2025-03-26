local frame = CreateFrame("Frame")

local function OnEvent(self, event, ...)
    if event == "PLAYER_LOGIN" or event == "PLAYER_SPECIALIZATION_CHANGED" then
        local _, class, classID = UnitClass("player")
        local spec = GetSpecialization()

        if classID == 3 then -- HUNTER
            if spec == 1 then -- BEAST MASTERY BINDS
                local beastMasterySpells = {
                    ["*"] = "#showtooltip Counter Shot\n/cast [@mouseover] Counter Shot",
                }

                for key, macroText in pairs(beastMasterySpells) do
                    local macroName = "BM_" .. key
                    local macroId = GetMacroIndexByName(macroName)

                    if macroId == 0 then
                        CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                    else
                        EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                    end

                    SetBindingMacro(key, macroName)
                end

            elseif spec == 2 then -- MARKSMANSHIP BINDS
                local marksmanshipSpells = {
                    ["*"] = "#showtooltip Counter Shot\n/cast [@mouseover] Counter Shot",
                }

                for key, macroText in pairs(marksmanshipSpells) do
                    local macroName = "MM_" .. key
                    local macroId = GetMacroIndexByName(macroName)

                    if macroId == 0 then
                        CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                    else
                        EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                    end

                    SetBindingMacro(key, macroName)
                end

            elseif spec == 3 then -- SURVIVAL BINDS
                local survivalSpells = {
                    ["*"] = "#showtooltip Muzzle\n/cast [@mouseover] Muzzle",
                }

                for key, macroText in pairs(survivalSpells) do
                    local macroName = "SV_" .. key
                    local macroId = GetMacroIndexByName(macroName)

                    if macroId == 0 then
                        CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                    else
                        EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                    end

                    SetBindingMacro(key, macroName)
                end
            end

        elseif classID == 8 then -- MAGE
            if spec == 1 then -- ARCANE BINDS
                local arcaneSpells = {
                    ["*"] = "#showtooltip Counterspell\n/cast [@mouseover] Counterspell",
                }

                for key, macroText in pairs(arcaneSpells) do
                    local macroName = "ARC_" .. key
                    local macroId = GetMacroIndexByName(macroName)

                    if macroId == 0 then
                        CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                    else
                        EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                    end

                    SetBindingMacro(key, macroName)
                end

            elseif spec == 2 then -- FIRE BINDS
                local fireSpells = {
                    ["*"] = "#showtooltip Counterspell\n/cast [@mouseover] Counterspell",
                }

                for key, macroText in pairs(fireSpells) do
                    local macroName = "FIRE_" .. key
                    local macroId = GetMacroIndexByName(macroName)

                    if macroId == 0 then
                        CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                    else
                        EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                    end

                    SetBindingMacro(key, macroName)
                end

            elseif spec == 3 then -- FROST BINDS
                local frostSpells = {
                    ["*"] = "#showtooltip Counterspell\n/cast [@mouseover] Counterspell",
                }

                for key, macroText in pairs(frostSpells) do
                    local macroName = "FROST_" .. key
                    local macroId = GetMacroIndexByName(macroName)

                    if macroId == 0 then
                        CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                    else
                        EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                    end

                    SetBindingMacro(key, macroName)
                end
            end

        elseif classID == 1 then -- WARRIOR
            local warriorSpells = {
                ["*"] = "#showtooltip Pummel\n/cast [@mouseover] Pummel",
            }

            for key, macroText in pairs(warriorSpells) do
                local macroName = "WAR_" .. key
                local macroId = GetMacroIndexByName(macroName)

                if macroId == 0 then
                    CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                else
                    EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                end

                SetBindingMacro(key, macroName)
            end

        elseif classID == 4 then -- ROGUE
            local rogueSpells = {
                ["*"] = "#showtooltip Kick\n/cast [@mouseover] Kick",
            }

            for key, macroText in pairs(rogueSpells) do
                local macroName = "ROG_" .. key
                local macroId = GetMacroIndexByName(macroName)

                if macroId == 0 then
                    CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                else
                    EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                end

                SetBindingMacro(key, macroName)
            end

        elseif classID == 11 then -- DRUID
            local druidSpells = {
                ["*"] = "#showtooltip Skull Bash\n/cast [@mouseover] Skull Bash",
            }

            for key, macroText in pairs(druidSpells) do
                local macroName = "DRU_" .. key
                local macroId = GetMacroIndexByName(macroName)

                if macroId == 0 then
                    CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                else
                    EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                end

                SetBindingMacro(key, macroName)
            end

        elseif classID == 2 then -- PALADIN
            local paladinSpells = {
                ["*"] = "#showtooltip Rebuke\n/cast [@mouseover] Rebuke",
            }

            for key, macroText in pairs(paladinSpells) do
                local macroName = "PAL_" .. key
                local macroId = GetMacroIndexByName(macroName)

                if macroId == 0 then
                    CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                else
                    EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                end

                SetBindingMacro(key, macroName)
            end

        elseif classID == 7 then -- SHAMAN
            local shamanSpells = {
                ["*"] = "#showtooltip Wind Shear\n/cast [@mouseover] Wind Shear",
            }

            for key, macroText in pairs(shamanSpells) do
                local macroName = "SHA_" .. key
                local macroId = GetMacroIndexByName(macroName)

                if macroId == 0 then
                    CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                else
                    EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                end

                SetBindingMacro(key, macroName)
            end

        elseif classID == 5 then -- PRIEST
            local priestSpells = {
                ["*"] = "#showtooltip Silence\n/cast [@mouseover] Silence",
            }

            for key, macroText in pairs(priestSpells) do
                local macroName = "PRI_" .. key
                local macroId = GetMacroIndexByName(macroName)

                if macroId == 0 then
                    CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                else
                    EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                end

                SetBindingMacro(key, macroName)
            end

        elseif classID == 6 then -- DEATH KNIGHT
            local deathKnightSpells = {
                ["*"] = "#showtooltip Mind Freeze\n/cast [@mouseover] Mind Freeze",
            }

            for key, macroText in pairs(deathKnightSpells) do
                local macroName = "DK_" .. key
                local macroId = GetMacroIndexByName(macroName)

                if macroId == 0 then
                    CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                else
                    EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                end

                SetBindingMacro(key, macroName)
            end

        elseif classID == 10 then -- MONK
            local monkSpells = {
                ["*"] = "#showtooltip Spear Hand Strike\n/cast [@mouseover] Spear Hand Strike",
            }

            for key, macroText in pairs(monkSpells) do
                local macroName = "MONK_" .. key
                local macroId = GetMacroIndexByName(macroName)

                if macroId == 0 then
                    CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                else
                    EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                end

                SetBindingMacro(key, macroName)
            end

        elseif classID == 12 then -- DEMON HUNTER
            local demonHunterSpells = {
                ["*"] = "#showtooltip Disrupt\n/cast [@mouseover] Disrupt",
            }

            for key, macroText in pairs(demonHunterSpells) do
                local macroName = "DH_" .. key
                local macroId = GetMacroIndexByName(macroName)

                if macroId == 0 then
                    CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                else
                    EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                end

                SetBindingMacro(key, macroName)
            end

        elseif classID == 13 then -- EVOKER
            local evokerSpells = {
                ["*"] = "#showtooltip Quell\n/cast [@mouseover] Quell",
            }

            for key, macroText in pairs(evokerSpells) do
                local macroName = "EVOKER_" .. key
                local macroId = GetMacroIndexByName(macroName)

                if macroId == 0 then
                    CreateMacro(macroName, "INV_MISC_QUESTIONMARK", macroText, nil)
                else
                    EditMacro(macroId, macroName, "INV_MISC_QUESTIONMARK", macroText)
                end

                SetBindingMacro(key, macroName)
            end
        end
    end
end

frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
frame:SetScript("OnEvent", OnEvent)
