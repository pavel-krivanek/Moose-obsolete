assignment tests
testComplicated1
	| collector |
	collector := self
		doForSource:
			'
		b := Set new: 3 * (c collect: [:s | s])'.
	self
		assertSends: #(#(#c #(#collect:)))
		in: collector.
	self
		assertAssignments: #(#(#b #(#Set)))
		in: collector