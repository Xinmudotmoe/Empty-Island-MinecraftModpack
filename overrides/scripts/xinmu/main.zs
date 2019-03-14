//无中生有
//去除多余的压缩原石
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:1>);
//去除多余的压缩沙砾
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:2>);
//去除多余的压缩沙子
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:3>);
//去除多余的压缩泥土
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:4>);
//去除多余的压缩地狱岩
mods.jei.JEI.removeAndHide(<excompressum:compressed_block:9>);
//修复剪子模组与匠魂冲突的问题
recipes.removeShaped(<tp:wooden_shears>);
recipes.addShaped(<tp:wooden_shears>*4, [[null, <minecraft:log>],[<minecraft:log>, <minecraft:log>]]);
//增加沙砾合成燧石的合成表
recipes.addShaped(<minecraft:flint>, [[<minecraft:gravel>,<minecraft:gravel>],[<minecraft:gravel>, null]]);

//能量网络
//增加[烧红石块]获得[能量方块]的配方
furnace.addRecipe(<fluxnetworks:fluxblock>,<minecraft:redstone_block>,0);
//增加[烧红石块]获得[能量方块]的配方的反配方    
furnace.addRecipe(<minecraft:redstone_block>,<fluxnetworks:fluxblock>,0);
//增加烧[红石]获得[能量尘]的配方的
furnace.addRecipe(<fluxnetworks:flux>,<minecraft:redstone>,1);

//去除所有与TNT/爆炸相关的物品
//去除EU2的TNT发电机
mods.jei.JEI.removeAndHide(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}));
//去除mc的TNT
mods.jei.JEI.removeAndHide(<minecraft:tnt>);
//去除mc的TNT矿车
mods.jei.JEI.removeAndHide(<minecraft:tnt_minecart>);
//去除我也不知道是啥的TNT
mods.jei.JEI.removeAndHide(<darkutils:fake_tnt>);
//去除匠魂的EFLN
mods.jei.JEI.removeAndHide(<tconstruct:throwball:1>);
//去除热爆花
mods.jei.JEI.removeAndHide(<botania:specialflower>.withTag({type: "entropinnyum"}));
//去除浮空热爆花
mods.jei.JEI.removeAndHide(<botania:floatingspecialflower>.withTag({type: "entropinnyum"}));

//修复空岛世界问题
//增加额外的陨石获取途径（一般不需要）
furnace.addRecipe(<appliedenergistics2:sky_stone_block>,<extrautils2:compressedcobblestone>);
//删除陨石罗盘
//mods.jei.JEI.removeAndHide(<appliedenergistics2:sky_compass>);
//删除末影蛋糕
mods.jei.JEI.removeAndHide(<exnihilocreatio:block_end_cake>);

//修复遗留问题
//删除精致存储(RS)的覆盖版
mods.jei.JEI.removeAndHide(<refinedstorage:cover>.withTag({Item: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:stonebrick", Count: 1 as byte, Damage: 0 as short}}));
mods.jei.JEI.removeAndHide(<refinedstorage:hollow_cover>.withTag({Item: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:stonebrick", Count: 1 as byte, Damage: 0 as short}}));

//增加云母的合成方案
recipes.addShaped(<environmentaltech:mica>, 
[   [null, <minecraft:ender_pearl>, null], 
    [<minecraft:ender_pearl>, <mysticalagriculture:tier5_inferium_seeds>, <minecraft:ender_pearl>],
    [null, <minecraft:ender_pearl>, null]]
);
//增加陨石的提示
<exnihilocreatio:block_skystone_crushed>.addTooltip("Warning, this item must be obtained using Diamond Hammer hammered meteorite.\n警告，必须使用钻石锤锤陨石才可以获得此物品。");

mods.jei.JEI.removeAndHide(<enderstorage:ender_storage:1>.withTag({Frequency: {middle: 0, left: 0, right: 0}}));
mods.jei.JEI.removeAndHide(<enderstorage:ender_storage>.withTag({Frequency: {middle: 0, left: 0, right: 0}}));

//增加粘土块互转的配方
recipes.addShaped(<minecraft:clay>, [[<minecraft:clay_ball>,<minecraft:clay_ball>],[<minecraft:clay_ball>, <minecraft:clay_ball>]]);

print("xinmu.zs script is ok.");