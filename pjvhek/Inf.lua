--------------------------------------------------------------------------------------------------------------------
--                                              PROXIMAHR LOGIN GUI                                               --
--------------------------------------------------------------------------------------------------------------------

-- SavedVariables tanımı (TOC dosyasına da eklenmeli: ## SavedVariables: ProximaHRSettings)
if not ProximaSaved then
    ProximaSaved = {}
end

-- GUI Frame Oluşturma
local LoginFrame = CreateFrame("Frame", "ProximaHRLoginFrame", UIParent, "BasicFrameTemplateWithInset")
LoginFrame:SetSize(600, 500)
LoginFrame:SetPoint("CENTER", UIParent, "CENTER")
LoginFrame:Hide() -- Başlangıçta gizli

-- Başlık
LoginFrame.title = LoginFrame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
LoginFrame.title:SetPoint("TOP", LoginFrame, "TOP", 0, -7)
LoginFrame.title:SetText("Proxima Hekili Addon")

-- Bilgi Metni
LoginFrame.text = LoginFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
LoginFrame.text:SetPoint("TOPLEFT", LoginFrame, "TOPLEFT", 15, -40)
LoginFrame.text:SetPoint("BOTTOMRIGHT", LoginFrame, "BOTTOMRIGHT", -15, 60)
LoginFrame.text:SetJustifyH("LEFT")
LoginFrame.text:SetJustifyV("TOP")
LoginFrame.text:SetText(
    "Welcome to Proxima Hekili!\n\n" ..
    "This addon enhances your gameplay by integrating with Hekili Addon.\n\n" ..
    "Please Attention:\n" ..
    "1 - ENSURE ALL YOUR SPELLS (EVEN TRINKETS) ARE KEYBINDED WITH KEYS BELOW.\n" ..
    "2 - ENSURE ALL YOUR SPELLS AT KEYBINDED ACTIONBARS.\n\n" ..
    "IF 1ST AND 2ND STEP DONE PROXIMA WILL DETECT ALL YOUR SPELLS AUTOMATICLY.\n\n" ..
    
    "USABLE KEYBINDS:\n\n" ..
    " 1 2 3 4 5 6 7 8 9 0\n\n" ..
    " SHIFT + 1 2 3 4 5 6 7 8 9 0\n\n" ..
    " CTRL + 1 2 3 4 5 6 7 8 9 0\n\n" ..
    " ALT + 1 2 3 4 5 6 7 8 9 0\n\n" ..
    " Q E R T Y F G H Z X C V\n\n" ..
    " SHIFT + Q E R T Y F G H Z X C V\n\n" ..
    " CTRL + Q E R T Y F G H Z X C V\n\n" ..
    " ALT + Q E R T Y F G H Z X C V\n\n\n" ..

    "Have Fun." 
)

-- Checkbox
LoginFrame.checkbox = CreateFrame("CheckButton", nil, LoginFrame, "UICheckButtonTemplate")
LoginFrame.checkbox:SetPoint("BOTTOMLEFT", LoginFrame, "BOTTOMLEFT", 15, 15)
LoginFrame.checkbox.text = LoginFrame.checkbox:CreateFontString(nil, "OVERLAY", "GameFontNormal")
LoginFrame.checkbox.text:SetPoint("LEFT", LoginFrame.checkbox, "RIGHT", 5, 0)
LoginFrame.checkbox.text:SetText("Don't show this at all for this character")

-- I Understand Butonu
LoginFrame.button = CreateFrame("Button", nil, LoginFrame, "UIPanelButtonTemplate")
LoginFrame.button:SetSize(100, 25)
LoginFrame.button:SetPoint("BOTTOMRIGHT", LoginFrame, "BOTTOMRIGHT", -15, 15)
LoginFrame.button:SetText("I Understand")
LoginFrame.button:SetScript("OnClick", function()
    local charName = UnitName("player") .. "-" .. GetRealmName()
    if LoginFrame.checkbox:GetChecked() then
        -- Checkbox seçiliyse ayarı kaydet
        ProximaSaved[charName] = true
    end
    LoginFrame:Hide()
end)

-- PLAYER_LOGIN Olayı
local loginMonitor = CreateFrame("Frame")
loginMonitor:RegisterEvent("PLAYER_LOGIN")
loginMonitor:SetScript("OnEvent", function(self, event)
    if event == "PLAYER_LOGIN" then
        local charName = UnitName("player") .. "-" .. GetRealmName()
        -- Eğer bu karakter için "gösterme" ayarlanmışsa, çık
        if ProximaSaved[charName] then
            return
        end
        -- Aksi halde GUI'yi göster
        LoginFrame:Show()
    end
end)

-- GUI'yi taşınabilir yap (isteğe bağlı)
LoginFrame:SetMovable(true)
LoginFrame:EnableMouse(true)
LoginFrame:RegisterForDrag("LeftButton")
LoginFrame:SetScript("OnDragStart", LoginFrame.StartMoving)
LoginFrame:SetScript("OnDragStop", LoginFrame.StopMovingOrSizing)