local function preDistributionMerge()
	table.insert(ProceduralDistributions.list.MagazineRackMaps.items, "AIZMap");
	table.insert(ProceduralDistributions.list.MagazineRackMaps.items, 10);
	table.insert(ProceduralDistributions.list.MagazineRackMaps.items, "AIZMap");
	table.insert(ProceduralDistributions.list.MagazineRackMaps.items, 10);
end
Events.OnPreDistributionMerge.Add(preDistributionMerge);


--table.insert(SuburbsDistributions["fossoil"]["shelvesmag"].items, "Base.AIZMap");
--table.insert(SuburbsDistributions["fossoil"]["shelvesmag"].items, 2); 

--table.insert(SuburbsDistributions["all"]["shelvesmag"].items, "Base.AIZMap");
--table.insert(SuburbsDistributions["all"]["shelvesmag"].items, 0.5);

--table.insert(SuburbsDistributions["fossoil"]["shelvesmag"].items, "Base.AIZA");
--table.insert(SuburbsDistributions["fossoil"]["shelvesmag"].items, 2); 

--table.insert(SuburbsDistributions["all"]["shelvesmag"].items, "Base.AIZA");
--table.insert(SuburbsDistributions["all"]["shelvesmag"].items, 0.5);

--table.insert(SuburbsDistributions["fossoil"]["shelvesmag"].items, "Base.AIZFK");
--table.insert(SuburbsDistributions["fossoil"]["shelvesmag"].items, 0.2); 

--table.insert(SuburbsDistributions["all"]["shelvesmag"].items, "Base.AIZFK");
--table.insert(SuburbsDistributions["all"]["shelvesmag"].items, 0.1);
 
--table.insert(SuburbsDistributions["fossoil"]["shelvesmag"].items, "Base.AIZFB");
--table.insert(SuburbsDistributions["fossoil"]["shelvesmag"].items, 0.2); 

--table.insert(SuburbsDistributions["all"]["shelvesmag"].items, "Base.AIZFB");
--table.insert(SuburbsDistributions["all"]["shelvesmag"].items, 0.1);

--table.insert(SuburbsDistributions["fossoil"]["shelvesmag"].items, "Base.AIZLB");
--table.insert(SuburbsDistributions["fossoil"]["shelvesmag"].items, 0.2); 

--table.insert(SuburbsDistributions["all"]["shelvesmag"].items, "Base.AIZLB");
--table.insert(SuburbsDistributions["all"]["shelvesmag"].items, 0.1);



