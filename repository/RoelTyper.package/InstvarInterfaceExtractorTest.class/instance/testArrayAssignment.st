assignment tests
testArrayAssignment
	| collector |
	collector := self doForSource: 'v := #(one two three)'.
	self
		assertAssignments: #(#(#v #(#Array)))
		in: collector