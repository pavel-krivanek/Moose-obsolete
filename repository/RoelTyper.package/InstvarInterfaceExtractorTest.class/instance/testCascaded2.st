send tests
testCascaded2
	| collector |
	collector := self doForSource: 'x printString; size; yourself'.
	self
		assertSends: #(#(#x #(#printString #size #yourself)))
		in: collector