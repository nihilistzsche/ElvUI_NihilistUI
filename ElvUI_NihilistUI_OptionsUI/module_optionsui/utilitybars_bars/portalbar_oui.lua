local NUI, E, L, _, P = _G.unpack(_G.ElvUI_NihilistUI)
local PRB = NUI.UtilityBars.PortalBar


function PRB:GenerateUtilityBarOptions()
	local options = {
		type = "group",
		name = L["Portal Bar"],
		args = {
			header = {
				order = 1,
				type = "header",
				name = L["NihilistUI PortalBar by Nihilistzsche, based on work by Azilroka"]
			},
			description = {
				order = 2,
				type = "description",
				name = L["NihilistUI PortalBar provides a bar for mage portals and mage and challenge mode teleports."]
			},
			general = {
				order = 3,
				type = "group",
				name = "General",
				guiInline = true,
				get = function(info)
					return E.db.nihilistui.utilitybars.portalBar[info[#info]]
				end,
				set = function(info, value)
					E.db.nihilistui.utilitybars.portalBar[info[#info]] = value
					self:UpdateBar(self.bar)
				end,
				args = {
					enabled = {
						type = "toggle",
						order = 1,
						name = L.Enable,
						desc = L["Enable the portal bar"]
					},
					resetsettings = {
						type = "execute",
						order = 2,
						name = L["Reset Settings"],
						desc = L["Reset the settings of this addon to their defaults."],
						func = function()
							E:CopyTable(E.db.nihilistui.utilitybars.portalBar, P.nihilistui.utilitybars.portalBar)
							self:UpdateBar(self.bar)
						end
					},
					mouseover = {
						type = "toggle",
						order = 3,
						name = L.Mouseover,
						desc = L["Only show the portal bar when you mouseover it"]
					},
					buttonsize = {
						type = "range",
						order = 4,
						name = L.Size,
						desc = L["Button Size"],
						min = 12,
						max = 40,
						step = 1
					},
					spacing = {
						type = "range",
						order = 5,
						name = L.Spacing,
						desc = L["Spacing between buttons"],
						min = 1,
						max = 10,
						step = 1
					},
					alpha = {
						type = "range",
						order = 6,
						name = L.Alpha,
						desc = L["Alpha of the bar"],
						min = 0.2,
						max = 1,
						step = .1
					},
					challengeModePandaria = {
						type = "toggle",
						order = 7,
						name = L["MoP Challenge Mode"],
						desc = L["Show the MoP Challenge Mode Portals"]
					},
					challengeModeDraenor = {
						type = "toggle",
						order = 8,
						name = L["WoD Challenge Mode"],
						desc = L["Show the WoD Challenge Mode Portals"]
					}
				}
			}
		}
	}

	return options
end
