local L = locale == "zh" or locale == "zhr" -- 是否为中文
name = L and '腐烂机' or "Rot Machine"
description = L and "腐烂机里的食物很快就会变质，从而提供大量腐烂食物来施肥。" or "Foods in the Machine will spoil soon, which supply plenty of spoiled food to fertilize."

author = "辣椒小皇纸;更新：ClockyCycas"

version = "1.3"

api_version = 10
api_version_dst = 10
dst_compatible = true

forumthread = ""

icon_atlas = "modicon.xml"
icon = "modicon.tex"

all_clients_require_mod = true
client_only_mod = false

server_filter_tags = {"Rot Machine"}

dont_starve_compatible = false

----------------------
-- General settings --
----------------------

configuration_options =
{
	{
		name = "language",
		label = L and '语言' or "Language",
		hover = "",
		options =	{
						{description = "English", data = "en", hover = ""},
						{description = "中文", data = "chs", hover = ""},
					},
		default = L and 'chs' or "en",
	},
	{
		name = "spoiled_food",
		label = L and '粪肥材料需求' or "Spoiled Foods Needed",
		hover = L and '配置制作粪肥所需的腐烂食物数量。' or "Configure how many spoiled foods you need to craft a poop.",
		options =	{
						{description = "4", data = 4, hover = ""},
						{description = "5", data = 5, hover = ""},
						{description = "6", data = 6, hover = ""},
						{description = "7", data = 7, hover = ""},
						{description = "8", data = 8, hover = ""},
						{description = "9", data = 9, hover = ""},
						{description = "10", data = 10, hover = ""},
						{description = "11", data = 11, hover = ""},
						{description = "12", data = 12, hover = ""},
					},
		default = 8,
	},
}