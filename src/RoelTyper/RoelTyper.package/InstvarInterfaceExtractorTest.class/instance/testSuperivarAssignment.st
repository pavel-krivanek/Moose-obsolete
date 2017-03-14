send tests
testSuperivarAssignment
	| collector |
	collector := self doForSource: '^testSelector := testSelector'.
	self
		assertSends: #()
		in: collector