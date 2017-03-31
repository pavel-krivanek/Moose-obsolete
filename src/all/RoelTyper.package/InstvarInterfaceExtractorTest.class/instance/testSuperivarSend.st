send tests
testSuperivarSend
	| collector |
	collector := self doForSource: '^testSelector printString'.
	self
		assertSends: #(#(#testSelector #(#printString)))
		in: collector