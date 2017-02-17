*Famix-Implementation
allSuperclassesDo: aBlock
	self allSuperclassesWithoutAliasesDo: aBlock.
	self mooseModel sourceLanguage isC
		ifTrue: [ self typeAliases do: [ :each | each allSuperclassesWithoutAliasesDo: aBlock ] ]