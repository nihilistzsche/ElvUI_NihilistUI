local NUI, E, L = _G.unpack(select(2, ...)) --Inport: Engine, Locales, ProfileDB, GlobalDB

local LSM = E.Libs.LSM

local FB = NUI.UtilityBars.FarmBar
local NUB = NUI.UtilityBars

local tremove = _G.tremove
local GameTooltip = _G.GameTooltip
local GetItemCount = _G.GetItemCount
local C_CurrencyInfo_GetCurrencyInfo = _G.C_CurrencyInfo.GetCurrencyInfo
local tContains = _G.tContains
local tinsert = _G.tinsert
local GetItemInfo = _G.GetItemInfo
local UIErrorsFrame = _G.UIErrorsFrame
local C_CurrencyInfo_GetCurrencyLink = _G.C_CurrencyInfo.GetCurrencyLink
local CopyTable = _G.CopyTable
local wipe = _G.wipe
local strfind = _G.strfind
local strmatch = _G.strmatch
local CreateFrame = _G.CreateFrame

function FB:CreateBar()
    local bar =
        NUB:CreateBar(
        "NihilistzscheUI_FarmBar",
        "farmBar",
        {"TOPLEFT", _G.NihilistzscheUI_TrackerBar, "BOTTOMLEFT", 0, -2},
        "Farm Bar"
    )
    NUB.RegisterCreateButtonHook(
        bar,
        function(button)
            self:CreateButtonHook(bar, button)
        end
    )
    NUB.RegisterUpdateButtonHook(
        bar,
        function(button, ...)
            self:UpdateButtonHook(button, ...)
        end
    )

    return bar
end

function FB:CreateButtonHook(bar, button)
    button.farmed = button:CreateFontString(nil, "OVERLAY")
    button.farmed:FontTemplate(LSM:Fetch("font", E.db.general.font), 10, "THINOUTLINE")
    button.farmed:SetWidth(E:Scale(bar.db.buttonsize) - 4)
    button.farmed:SetHeight(E:Scale(14))
    button.farmed:SetJustifyH("RIGHT")
    button.farmed:Point("TOPRIGHT", 0, 0)
    button.farmed:Show()
    button.target = button:CreateFontString(nil, "OVERLAY")
    button.target:FontTemplate(LSM:Fetch("font", E.db.general.font), 10, "THINOUTLINE")
    button.target:SetWidth(E:Scale(bar.db.buttonsize) - 4)
    button.target:SetHeight(E:Scale(14))
    button.target:SetJustifyH("RIGHT")
    button.target:Point("BOTTOMRIGHT", 0, 0)
    button.target:Show()

    button:RegisterForClicks("AnyDown")
    button:SetScript(
        "OnClick",
        function(_self, mouseButton)
            if (mouseButton == "RightButton") then
                local tbl = _G.ElvDB.farmBar[self.myname][button.table]
                tremove(tbl, NUI.InvertTable(tbl)[button])
                self.sessionDB[button.table][button.data] = nil
                self:UpdateBar(bar)
            end
            _self:SetChecked(false)
        end
    )
end

local boaStr = _G.ITEM_BNETACCOUNTBOUND
local DataStore
function FB:GetItemCount(itemID)
    local count = _G.ElvDB.farmBar[self.myname].count.items[itemID]
    E.ScanTooltip:SetOwner(_G.UIParent, "ANCHOR_NONE")
    E.ScanTooltip:SetItemByID(itemID)
    E.ScanTooltip:Show()
    local bindTypeLines = (_G.GetCVarBool("colorblindmode") and 5) or 4
    local boa = false
    for i = 2, bindTypeLines do
        local line = _G[E.ScanTooltip:GetName() .. ("TextLeft%d"):format(i)]:GetText()
        if not line or line == "" then
            break
        end
        if line == boaStr then
            boa = true
            break
        end
    end
    if not DataStore then
        DataStore = _G.DataStore
    end
    if boa and DataStore then
        local total = 0
        for _, character in pairs(DataStore:GetCharacters()) do
            local c = DataStore:GetContainerItemCount(character, itemID) or 0
            local mc = DataStore:GetMailItemCount(character, itemID) or 0
            total = total + c + mc
        end
        count = total
    end
    return count
end

function FB:SetItemTooltip(itemID)
    local ret = GameTooltip:SetItemByID(itemID)

    GameTooltip:AddLine(" ")
    GameTooltip:AddLine(L["Session:"])
    local gained = self.sessionDB.items[itemID].gained
    local lost = self.sessionDB.items[itemID].lost
    local change = gained - lost

    GameTooltip:AddDoubleLine(L["Earned:"], gained, 1, 1, 1, 1, 1, 1)
    GameTooltip:AddDoubleLine(L["Spent:"], lost, 1, 1, 1, 1, 1, 1)
    if (change < 0) then
        GameTooltip:AddDoubleLine(L["Deficit:"], -change, 1, 0, 0, 1, 1, 1)
    elseif (change > 0) then
        GameTooltip:AddDoubleLine(L["Profit:"], change, 0, 1, 0, 1, 1, 1)
    end
    local count = FB:GetItemCount(itemID)
    local target = _G.ElvDB.farmBar[FB.myname].target.items[itemID]

    GameTooltip:AddDoubleLine(L["Total: "], count, 1, 1, 1, 1, 1, 1)

    local r, g, b
    if (count < target) then
        r = 1
        g = 0
        b = 0
    else
        r = 0
        g = 1
        b = 0
    end

    GameTooltip:AddDoubleLine("Target: ", target, 1, 1, 1, r, g, b)
    GameTooltip:Show()

    return ret
end

function FB:SetCurrencyTooltip(currencyID)
    local ret = GameTooltip:SetCurrencyByID(currencyID)

    NUB.AddAltoholicCurrencyInfo(currencyID)

    GameTooltip:AddLine(" ")
    GameTooltip:AddLine(L["Session:"])
    local gained = self.sessionDB.currency[currencyID].gained
    local lost = self.sessionDB.currency[currencyID].lost
    local change = gained - lost

    GameTooltip:AddDoubleLine(L["Earned:"], gained, 1, 1, 1, 1, 1, 1)
    GameTooltip:AddDoubleLine(L["Spent:"], lost, 1, 1, 1, 1, 1, 1)
    if (change < 0) then
        GameTooltip:AddDoubleLine(L["Deficit:"], -change, 1, 0, 0, 1, 1, 1)
    elseif (change > 0) then
        GameTooltip:AddDoubleLine(L["Profit:"], change, 0, 1, 0, 1, 1, 1)
    end
    local count = _G.ElvDB.farmBar[FB.myname].count.currency[currencyID]
    local target = _G.ElvDB.farmBar[FB.myname].target.currency[currencyID]

    GameTooltip:AddDoubleLine(L["Total: "], count, 1, 1, 1, 1, 1, 1)

    local r, g, b
    if (count < target) then
        r = 1
        g = 0
        b = 0
    else
        r = 0
        g = 1
        b = 0
    end

    GameTooltip:AddDoubleLine("Target: ", target, 1, 1, 1, r, g, b)
    GameTooltip:Show()

    return ret
end

function FB:UpdateItemButton(button)
    local v = button.data
    if (not self.sessionDB.items[v]) then
        self:AddWatchStartValue(true, v)
    end
    button.table = "items"
    local count = GetItemCount(v, true)
    self:UpdateAndNotify(true, v, count)
    button.farmed:SetText(FB:GetItemCount(v))
    local target = _G.ElvDB.farmBar[FB.myname].target.items[v]
    button.target:SetText(target)
    if (count < target) then
        button.target:SetTextColor(1.0, 0.2, 0.2)
    else
        button.target:SetTextColor(0.2, 1.0, 0.2)
    end

    button.SetTooltip = function()
        return self:SetItemTooltip(v)
    end
end

function FB:UpdateCurrencyButton(button)
    local v = button.data
    if (not self.sessionDB.currency[v]) then
        self:AddWatchStartValue(false, v)
    end
    button.table = "currency"
    local _, amount = C_CurrencyInfo_GetCurrencyInfo(v)
    self:UpdateAndNotify(false, v, amount)
    button.farmed:SetText(amount)
    local target = _G.ElvDB.farmBar[FB.myname].target.currency[v]
    button.target:SetText(target)
    if (amount < target) then
        button.target:SetTextColor(1.0, 0.2, 0.2)
    else
        button.target:SetTextColor(0.2, 1.0, 0.2)
    end

    button.SetTooltip = function()
        return self:SetCurrencyTooltip(v)
    end
end

function FB:UpdateButtonHook(button, type, index)
    button.index = index
    button.count:Hide()
    if (type == "item") then
        self:UpdateItemButton(button)
    else
        self:UpdateCurrencyButton(button)
    end
end

function FB:UpdateBar(bar)
    local items = _G.ElvDB.farmBar[FB.myname].items
    local currency = _G.ElvDB.farmBar[FB.myname].currency

    NUB.CreateButtons(bar, #items + #currency)

    NUB.WipeButtons(bar)

    local function f(key, id)
        for i, v in ipairs(ElvDB.farmBar[FB.myname][key]) do
            if (v == id) then
                return i
            end
        end
    end

    table.sort(
        items,
        function(a, b)
            return a > b
        end
    )
    for i = 1, #items do
        local button = bar.buttons[i]

        NUB.UpdateButtonAsItem(bar, button, items[i], "item", f("items", items[i]))
    end

    -- Holy crap why are there strings for the currency ids??
    local fixMePls = {}
    for i, v in pairs(ElvDB.trackerbar[FB.myname].currency) do
        if type(v) ~= "number" then
            tinsert(fixMePls, i)
        end
    end

    for _, v in ipairs(fixMePls) do
        ElvDB.farmBar[FB.myname].currency[v] = tonumber(ElvDB.farmBar[FB.myname].currency[v])
    end

    table.sort(
        currency,
        function(a, b)
            return a > b
        end
    )
    for i = #items + 1, #items + #currency do
        local button = bar.buttons[i]

        local v = currency[i - #items]
        local info = C_CurrencyInfo_GetCurrencyInfo(v)
        button.data = v
        NUB.UpdateButtonAsCustom(bar, button, info.iconFileID, "currency", f("currency", currency[i - #items]))
    end

    NUB.UpdateBar(self, bar, "ELVUIBAR21BINDBUTTON")
end

function FB:AddWatchStartValue(isItem, id)
    local table = isItem and "items" or "currency"

    self.sessionDB[table][id] = {}
    self.sessionDB[table][id].gained = 0
    self.sessionDB[table][id].lost = 0
end

function FB:AddWatch(item, id, target)
    -- luacheck: no max line length
    local table = item and "items" or "currency"

    local notificationItem = L["Added item watch for %s"]
    local notificationCurrency = L["Added currency watch for %s"]

    if (not tContains(_G.ElvDB.farmBar[self.myname][table], id)) then
        _G.ElvDB.farmBar[self.myname].count[table][id] =
            item and GetItemCount(id, true) or select(2, C_CurrencyInfo_GetCurrencyInfo(id))
        tinsert(_G.ElvDB.farmBar[self.myname][table], id)
        if (E.db.nihilistzscheui.utilitybars.farmBar.notify) then
            local string = item and notificationItem or notificationCurrency
            if (not item or GetItemInfo(id)) then
                UIErrorsFrame:AddMessage(
                    string:format(item and select(2, GetItemInfo(id)) or C_CurrencyInfo_GetCurrencyLink(id))
                )
            end
        end
    end
    _G.ElvDB.farmBar[FB.myname].target[table][id] = target
    FB:UpdateBar(FB.bar)
end

function FB:UpdateAndNotify(item, id, count)
    local table = item and "items" or "currency"
    local oldCount = _G.ElvDB.farmBar[FB.myname].count[table][id] or 0
    local target = _G.ElvDB.farmBar[FB.myname].target[table][id] or 0

    local earned = "You have |cff00ff00earned|r %d %s (|cff00ffffcurrently|r %d, |cff0000ffTarget|r %d)"
    local repstr = "%d |cffff00ffRepetitions|r"
    local change = count - oldCount
    local link = item and select(2, GetItemInfo(id)) or GetCurrencyLink(id, 0)
    local notify = E.db.nihilistzscheui.utilitybars.farmBar.notify
    if (change and link and change > 0) then
        self.sessionDB[table][id].gained = self.sessionDB[table][id].gained + change
        if (notify) then
            if (count < target) then
                local reps = math.ceil(((target - count) / change))
                UIErrorsFrame:AddMessage(repstr:format(reps))
            end
            UIErrorsFrame:AddMessage(earned:format(change, link, count, target))
        end
    end
    _G.ElvDB.farmBar[FB.myname].count[table][id] = count
end

function FB.GetID(ID)
    if (not ID) then
        return nil
    end
    if (strfind(ID, "item:")) then
        return tonumber(strmatch(ID, "\124\124Hitem:(%d+)")), true
    elseif (strfind(ID, "currency:")) then
        return tonumber(strmatch(ID, "\124\124Hcurrency:(%d+)")), false
    end
end

local function AddFarmWatch(msg)
    msg = msg:gsub("\124", "\124\124")
    local link, target = strmatch(msg, "(.+) (%d+)$")
    local id, type = FB.GetID(link)
    if not id or type == nil or not target then
        print("Usage: /fbadd [item or currency link] [targetAmount]")
        return
    end
    FB:AddWatch(type, id, tonumber(target))
end

function FB:Initialize()
    NUB:InjectScripts(self)

    FB.sessionDB = {}
    FB.sessionDB.items = {}
    FB.sessionDB.currency = {}

    FB.myname = ("%s-%s"):format(E.myname, E.myrealm)
    local ElvDB = _G.ElvDB
    ElvDB.farmBar = ElvDB.farmBar or {}
    ElvDB.farmBar[FB.myname] = _G.ElvDB.farmBar[FB.myname] or {}
    ElvDB.farmBar[FB.myname].items = _G.ElvDB.farmBar[FB.myname].items or {}
    ElvDB.farmBar[FB.myname].currency = _G.ElvDB.farmBar[FB.myname].currency or {}
    ElvDB.farmBar[FB.myname].count = _G.ElvDB.farmBar[FB.myname].count or {}
    ElvDB.farmBar[FB.myname].count.items = _G.ElvDB.farmBar[FB.myname].count.items or {}
    ElvDB.farmBar[FB.myname].count.currency = _G.ElvDB.farmBar[FB.myname].count.currency or {}
    ElvDB.farmBar[FB.myname].target = _G.ElvDB.farmBar[FB.myname].target or {}
    ElvDB.farmBar[FB.myname].target.items = _G.ElvDB.farmBar[FB.myname].target.items or {}
    ElvDB.farmBar[FB.myname].target.currency = _G.ElvDB.farmBar[FB.myname].target.currency or {}

    local frame = CreateFrame("Frame", "NihilistzscheUI_FarmBarController")
    frame:RegisterEvent("BAG_UPDATE")
    frame:RegisterEvent("CHAT_MSG_MONEY")
    frame:RegisterEvent("CHAT_MSG_CURRENCY")
    frame:RegisterEvent("CHAT_MSG_COMBAT_HONOR_GAIN")
    frame:RegisterEvent("CURRENCY_DISPLAY_UPDATE")
    NUB:RegisterEventHandler(self, frame)

    local bar = self:CreateBar()
    self.bar = bar
    self.hooks = {}

    self:UpdateBar(bar)

    _G.SLASH_FBADD1 = "/fbadd"
    _G.SlashCmdList.FBADD = AddFarmWatch
end

NUB:RegisterUtilityBar(FB)
