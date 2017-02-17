tests
testAllWithTypeAtRuntime
	| group |
	group := MooseGroup withAll: #(42 #fortytwo).
	group entityStorage forRuntime.
	self assert: (group allWithType: SmallInteger) size equals: 1.
	self assert: (group allWithType: ByteSymbol) size equals: 1.
	self assert: (group allWithType: Object) isEmpty