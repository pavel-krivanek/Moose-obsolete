send tests
testblockwithargs
	| collector |
	collector := self
		doForSource: '^[:s | s + 1] value: 1'.
	self
		assertSends: #()
		in: collector