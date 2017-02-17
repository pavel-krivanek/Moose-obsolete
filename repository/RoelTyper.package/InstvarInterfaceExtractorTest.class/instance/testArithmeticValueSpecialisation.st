combined tests
testArithmeticValueSpecialisation
	| collector |
	collector := self
		doForSource:
			'
		b := (Point x: 2 y: 4) - (1@1) '.
	self
		assertSends: #()
		in: collector.
	self
		assertAssignments: #(#(#b #(#Point)))
		in: collector