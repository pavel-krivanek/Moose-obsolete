accessing
allSuperclassesDo: aBlock
	self allSuperclasses do: [ :each | aBlock value: each ]