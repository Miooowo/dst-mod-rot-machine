GLOBAL.setmetatable(env, {
    __index = function(t, k) return GLOBAL.rawget(GLOBAL, k) end
})
PrefabFiles = 
{
"rotbox",
}

Assets = 
{

	Asset("ATLAS", "images/inventoryimages/rotbox.xml"),
	Asset("IMAGE", "images/inventoryimages/rotbox.tex"),
	Asset("ANIM", "anim/rotbox.zip"),

}

-- local Ingredient = GLOBAL.Ingredient
-- local RECIPETABS = GLOBAL.RECIPETABS
-- local STRINGS = GLOBAL.STRINGS
-- local TECH = GLOBAL.TECH
if GetModConfigData("language") == "en" then
    --Rot Machine
    STRINGS.NAMES.ROTBOX = "Rot Machine"
    STRINGS.RECIPE_DESC.ROTBOX = "It turns foods into rotten foods."
    STRINGS.CHARACTERS.GENERIC.DESCRIBE.ROTBOX = "Oh, it's so amazing!"
    --poop
    STRINGS.RECIPE_DESC.POOP = "Craft manure with rots."
else
    --Rot Machine
    STRINGS.NAMES.ROTBOX = "腐烂机"
    STRINGS.RECIPE_DESC.ROTBOX = "使食物快速腐烂"
    STRINGS.CHARACTERS.GENERIC.DESCRIBE.ROTBOX = "啊，神奇的机器！"
    --poop
    STRINGS.RECIPE_DESC.POOP = "用腐烂的食物制作大便"
end
--[[
  local rotbox = AddRecipe("rotbox",
    { 
    Ingredient("goldnugget", 2), 
    Ingredient("cutstone", 1),
    Ingredient("wetgoop",1)
    },  
    GLOBAL.RECIPETABS.SCIENCE, GLOBAL.TECH.SCIENCE_TWO, "rotbox_placer", 1, nil, nil, nil, "images/inventoryimages/rotbox.xml" )
]]
AddRecipe2("rotbox", 
    {Ingredient("goldnugget", 2), Ingredient("cutstone", 1),Ingredient("wetgoop",1)},
    TECH.SCIENCE_TWO, {placer="rotbox_placer",atlas = "images/inventoryimages/rotbox.xml"},
    {"MODS", "GARDENING"})
AddMinimapAtlas("images/inventoryimages/rotbox.xml")

--AddRecipe("poop",  {Ingredient("spoiled_food", GetModConfigData("spoiled_food"))}, RECIPETABS.FARM, TECH.SCIENCE_TWO)
AddRecipe2("poop_rot",  {Ingredient("spoiled_food", GetModConfigData("spoiled_food"))}, 
    TECH.SCIENCE_TWO, {product="poop"},{"MODS", "GARDENING"})