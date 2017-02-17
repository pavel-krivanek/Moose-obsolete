assignment tests
testIdentity
	| collector |
	collector := self doForSource: 'u := v == 3'.
	self
		assertSends: #(#(#v #(#==)))
		in: collector.
	self
		assertAssignments: #(#(#u #(#Boolean)))
		in: collector