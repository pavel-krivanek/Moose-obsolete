enumerating
attributeNamesDo: aBlock
	self do: [:each | aBlock value: each name]