send tests
testblockindirectxy
	| collector |
	collector := self
		doForSource: '^self testu ifTrue: [self x] ifFalse: [self y asString]'.
	self
		assertSends: #(#(#y #(#asString)))
		in: collector