// --- Chunk Loader Coin I
<dreamcraft:item.CoinChunkloaderTierI>.addTooltip(format.green("12H in Passive Chunkloader, 24H in Personal Chunkloader"));

// --- Chunk Loader Coin II
<dreamcraft:item.CoinChunkloaderTierII>.addTooltip(format.green("24H in Passive Chunkloader, 48H in Personal Chunkloader"));

// --- Chunk Loader Coin III
<dreamcraft:item.CoinChunkloaderTierIII>.addTooltip(format.green("48H in Passive Chunkloader, 96H in Personal Chunkloader"));

// --- Chunk Loader Coin IV
<dreamcraft:item.CoinChunkloaderTierIV>.addTooltip(format.green("96H in Passive Chunkloader, 192H in Personal Chunkloader"));

// --- Chunk Loader Coin V
<dreamcraft:item.CoinChunkloaderTierV>.addTooltip(format.green("192H in Passive Chunkloader, 384H in Personal Chunkloader"));

// --- Chunk Loaders
//We Promote the use of Personal / Passive Anchors
//Remove SC Chunk Loader
<StevesCarts:CartModule:49>.addTooltip(format.red("Banned Item"));
recipes.remove(<StevesCarts:CartModule:49>);

//Remove OC Chunk Loader
<ore:oc:chunkloaderUpgrade>.addTooltip(format.red("Banned Item"));
recipes.remove(<ore:oc:chunkloaderUpgrade>);

//Remove RC World Anchor
<Railcraft:machine.alpha>.addTooltip(format.red("Banned Item, Feel free to craft then destroy for Quest."));
recipes.remove(<Railcraft:machine.alpha>);

//Remove RC World Cart Anchor
<Railcraft:cart.anchor>.addTooltip(format.red("Banned Item"));
recipes.remove(<Railcraft:cart.anchor>);

//Remove OC Drone's Temp Due to Exploit
<ore:oc:droneCase1>.addTooltip(format.red("Banned Item"));
recipes.remove(<ore:oc:droneCase1>);
<ore:oc:droneCase2>.addTooltip(format.red("Banned Item"));
recipes.remove(<ore:oc:droneCase2>);
<OpenComputers:item:91>.addTooltip(format.red("Banned Item"));
recipes.remove(<OpenComputers:item:91>);

//Banned Due to Major Server Crashes 12-05-2024
<gregtech:gt.blockmachines:17000>.addTooltip(format.red("Banned Item"));
