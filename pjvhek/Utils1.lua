local frame = CreateFrame("Frame")

local function OnEvent(self, event, ...)
    if event == "PLAYER_LOGIN" or event == "PLAYER_SPECIALIZATION_CHANGED" then
        local _, class = UnitClass("player")
        local spec = GetSpecialization()

        -- Hunter
        if class == "HUNTER" then
            if spec == 1 then -- BEAST MASTERY
                local beastMasterySpells = {
                    ["-"] = 147362,    -- COUNTERSHOT
                }
                for key, spellID in pairs(beastMasterySpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 2 then -- MARKSMANSHIP
                local marksmanSpells = {
                    ["-"] = 147362,    -- COUNTERSHOT
                }
                for key, spellID in pairs(marksmanSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 3 then -- SURVIVAL
                local survivalSpells = {
                    ["-"] = 187707,    -- MUZZLE
                }
                for key, spellID in pairs(survivalSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            end

        -- Druid
        elseif class == "DRUID" then
            if spec == 1 then -- BALANCE
                local balanceSpells = {
                    ["-"] = 78675,    -- SOLARBEAM
                }
                for key, spellID in pairs(balanceSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 2 then -- FERAL
                local feralSpells = {
                    ["-"] = 106839,    -- SKULLBASH
                    ["ALT-CTRL-0"] = 5215,      -- STEALTH
                }
                for key, spellID in pairs(feralSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 3 then -- GUARDIAN
                local guardianSpells = {
                    ["-"] = 106839,    -- SKULLBASH
                }
                for key, spellID in pairs(guardianSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 4 then -- RESTORATION
                local restorationSpells = {
                    ["-"] = 774,    -- REJUVENATION
                }
                for key, spellID in pairs(restorationSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            end

        -- Rogue
        elseif class == "ROGUE" then
            if spec == 1 then -- ASSASSINATION
                local assassinationSpells = {
                    ["-"] = 1766,    -- KICK
                    ["ALT-CTRL-0"] = 1784,    -- STEALTH
                }
                for key, spellID in pairs(assassinationSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 2 then -- OUTLAW
                local outlawSpells = {
                    ["-"] = 1766,    -- KICK
                    ["ALT-CTRL-0"] = 1784,    -- STEALTH
                }
                for key, spellID in pairs(outlawSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 3 then -- SUBTLETY
                local subtletySpells = {
                    ["-"] = 1766,    -- KICK
                    ["ALT-CTRL-0"] = 1784,    -- STEALTH
                }
                for key, spellID in pairs(subtletySpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            end

        -- Death Knight
        elseif class == "DEATHKNIGHT" then
            if spec == 1 then -- BLOOD
                local bloodSpells = {
                    ["-"] = 47528,    -- MINDFREEZE
                }
                for key, spellID in pairs(bloodSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 2 then -- FROST
                local frostSpells = {
                    ["-"] = 47528,    -- MINDFREEZE
                }
                for key, spellID in pairs(frostSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 3 then -- UNHOLY
                local unholySpells = {
                    ["-"] = 47528,    -- MINDFREEZE
                }
                for key, spellID in pairs(unholySpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            end

        -- Demon Hunter
        elseif class == "DEMONHUNTER" then
            if spec == 1 then -- HAVOC
                local havocSpells = {
                    ["-"] = 183752,    -- DISRUPT
                }
                for key, spellID in pairs(havocSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 2 then -- VENGEANCE
                local vengeanceSpells = {
                    ["-"] = 183752,    -- DISRUPT
                }
                for key, spellID in pairs(vengeanceSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            end

        -- Warrior
        elseif class == "WARRIOR" then
            if spec == 1 then -- ARMS
                local armsSpells = {
                    ["-"] = 6552,    -- PUMMEL
                }
                for key, spellID in pairs(armsSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 2 then -- FURY
                local furySpells = {
                    ["-"] = 6552,    -- PUMMEL
                }
                for key, spellID in pairs(furySpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 3 then -- PROTECTION
                local protectionSpells = {
                    ["-"] = 6552,    -- PUMMEL
                }
                for key, spellID in pairs(protectionSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            end

        -- Shaman
        elseif class == "SHAMAN" then
            if spec == 1 then -- ELEMENTAL
                local elementalSpells = {
                    ["-"] = 57994,    -- WIND SHEAR
                }
                for key, spellID in pairs(elementalSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 2 then -- ENHANCEMENT
                local enhancementSpells = {
                    ["-"] = 57994,    -- WIND SHEAR
                }
                for key, spellID in pairs(enhancementSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 3 then -- RESTORATION
                local restorationSpells = {
                    ["-"] = 51945,    -- EARTHLIVING BOND
                }
                for key, spellID in pairs(restorationSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            end

        -- Monk
        elseif class == "MONK" then
            if spec == 1 then -- BREWMASTER
                local brewmasterSpells = {
                    ["-"] = 115078,    -- PARALYZE
                }
                for key, spellID in pairs(brewmasterSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 2 then -- MISTWEAVER
                local mistweaverSpells = {
                    ["-"] = 115078,    -- PARALYZE
                }
                for key, spellID in pairs(mistweaverSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 3 then -- WINDWALKER
                local windwalkerSpells = {
                    ["-"] = 115078,    -- PARALYZE
                }
                for key, spellID in pairs(windwalkerSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            end

        -- Warlock
        elseif class == "WARLOCK" then
            if spec == 1 then -- AFFLICTION
                local afflictionSpells = {
                    ["-"] = 30283,    -- SPELL LOCK
                }
                for key, spellID in pairs(afflictionSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 2 then -- DEMONOLOGY
                local demonologySpells = {
                    ["-"] = 30283,    -- SPELL LOCK
                }
                for key, spellID in pairs(demonologySpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 3 then -- DESTRUCTION
                local destructionSpells = {
                    ["-"] = 30283,    -- SPELL LOCK
                }
                for key, spellID in pairs(destructionSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            end

        -- Priest
        elseif class == "PRIEST" then
            if spec == 1 then -- DISCIPLINE
                local disciplineSpells = {
                    ["-"] = 15487,    -- SILENCE
                }
                for key, spellID in pairs(disciplineSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 2 then -- HOLY
                local holySpells = {
                    ["-"] = 15487,    -- SILENCE
                }
                for key, spellID in pairs(holySpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 3 then -- SHADOW
                local shadowSpells = {
                    ["-"] = 15487,    -- SILENCE
                }
                for key, spellID in pairs(shadowSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            end

        -- Mage
        elseif class == "MAGE" then
            if spec == 1 then -- ARCANE
                local arcaneSpells = {
                    ["-"] = 2139,    -- COUNTERSPELL
                }
                for key, spellID in pairs(arcaneSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 2 then -- FIRE
                local fireSpells = {
                    ["-"] = 2139,    -- COUNTERSPELL
                }
                for key, spellID in pairs(fireSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            elseif spec == 3 then -- FROST
                local frostSpells = {
                    ["-"] = 2139,    -- COUNTERSPELL
                }
                for key, spellID in pairs(frostSpells) do
                    if IsPlayerSpell(spellID) then
                        local spellInfo = C_Spell.GetSpellInfo(spellID)
                        local spellName = spellInfo.name
                        SetBinding(key, "SPELL "..spellName)
                    end
                end
            end
        end
    end
end

frame:RegisterEvent("PLAYER_LOGIN")
frame:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
frame:SetScript("OnEvent", OnEvent)
