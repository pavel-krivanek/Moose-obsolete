send tests
testblockxy
	| collector |
	collector := self doForSource: '^self xyw ifTrue: [x] ifFalse: [y]'.
	self
		assertSends: #()
		in: collector