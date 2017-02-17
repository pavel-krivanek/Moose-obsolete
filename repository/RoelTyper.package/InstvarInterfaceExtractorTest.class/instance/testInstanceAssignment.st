assignment tests
testInstanceAssignment
	| collector |
	collector := self doForSource: 'w := TypeCollector new'.
	self
		assertAssignments: #(#(#w #(#TypeCollector)))
		in: collector