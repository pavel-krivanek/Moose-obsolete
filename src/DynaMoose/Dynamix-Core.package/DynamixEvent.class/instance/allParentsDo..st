enumerating
allParentsDo: aBlock
	self parent isNil ifTrue: [^ self].
	aBlock value: self parent.
	self parent allParentsDo: aBlock