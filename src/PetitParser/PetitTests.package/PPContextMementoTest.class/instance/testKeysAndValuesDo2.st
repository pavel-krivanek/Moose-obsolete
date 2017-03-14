tests
testKeysAndValuesDo2
	| c1 c2   |
	c1 := OrderedCollection new.
	c2 := OrderedCollection new.

	memento propertyAt: #foo put: c1.
	memento propertyAt: #bar put: c2.

	memento keysAndValuesDo: [ :key :value |
		self assert: (value == c1) not.
		self assert: (value == c2) not.
	].