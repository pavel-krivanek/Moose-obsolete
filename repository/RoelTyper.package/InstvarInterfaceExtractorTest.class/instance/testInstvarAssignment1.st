assignment tests
testInstvarAssignment1
	| collector |
	collector := self
		doForSource:
			'
		| temp1 temp2 temp3 |
		a := 3.
		b := a'.
	self
		assertAssignments: #(#(#b #(#SmallInteger)) #(#a #(#SmallInteger)))
		in: collector