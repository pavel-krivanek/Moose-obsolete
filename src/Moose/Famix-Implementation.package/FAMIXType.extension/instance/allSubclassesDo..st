*Famix-Implementation
allSubclassesDo: aBlock
	self allSubclassesWithoutAliasesDo: aBlock.
	self typeAliases do: [ :each | each allSubclassesWithoutAliasesDo: aBlock ]