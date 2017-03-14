send tests
testindirectx
	| collector |
	collector := self doForSource: '^self x printString'.
	self
		assertSends: #(#(#x #(#printString)))
		in: collector