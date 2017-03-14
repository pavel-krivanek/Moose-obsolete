send tests
testblockyab
	" #'ifTrue:ifFalse: is sent to a, but is not Captured by the extractor"

	| collector |
	collector := self doForSource: '^self a ifTrue: [b] ifFalse: [y]'.
	self
		assertSends: #()
		in: collector