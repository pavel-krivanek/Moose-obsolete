assignment tests
testInstanceAssignmentIndirect
	| collector |
	collector := self doForSource: 'self w: TypeCollector new'.
	self
		assertAssignments: #(#(#w #(#TypeCollector)))
		in: collector