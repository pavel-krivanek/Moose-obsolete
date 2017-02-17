tests
testAllWithTypeAtSetup
	| group |
	group := MooseGroup withAll: #(42 #fortytwo).
	group entityStorage forSetup.
	self assert: (group allWithType: SmallInteger) size equals: 1.
	self assert: (group allWithType: ByteSymbol) size equals: 1.
	self assert: (group allWithType: Object) isEmpty