*Famix-Implementation
allSubclassesWithoutAliasesDo: aBlock
	self subInheritances do: [ :each | aBlock value: each subclass ].
	self subInheritances do: [ :each | each subclass allSubclassesDo: aBlock ]