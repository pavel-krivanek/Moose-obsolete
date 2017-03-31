assignment tests
testInstvarAssignment2
	| collector |
	collector := self
		doForSource:
			'
		| temp1 temp2 temp3 |
		c := b := 3.'.
	self
		assertAssignments: #(#(#b #(#SmallInteger)) #(#c #(#SmallInteger)))
		in: collector