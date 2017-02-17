send tests
testblockuwx
	| collector |
	collector := self
		doForSource: '^[u + w] on: Error do: [:exc | x printString]'.
	self
		assertSends: #(#(#u #(#+)) #(#x #(#printString)))
		in: collector