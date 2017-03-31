send tests
testCascaded1
	| collector |
	collector := self doForSource: 'x printString; size'.
	self
		assertSends: #(#(#x #(#printString #size)))
		in: collector