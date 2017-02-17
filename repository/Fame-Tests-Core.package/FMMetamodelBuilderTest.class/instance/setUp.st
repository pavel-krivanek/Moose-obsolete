running
setUp

	| t |
	t := FMTower new.
	t metamodel document: FMDungeonExample dungeonScript. 
	metamodel := t metamodel.