*Famix-Implementation
allSuperclassesWithoutAliasesDo: aBlock
	superInheritances do: [:each | aBlock value: each superclass].
	superInheritances do: [:each | each superclass allSuperclassesDo: aBlock]