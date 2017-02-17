as yet unclassified
testEmptyStream
	aStream := PPStream on:
'

'.
	self
		assert: aStream
		position: -1
		line: 0
		column: 0.
	self
		assert: aStream
		position: 0
		line: 1
		column: 1.
	self
		assert: aStream
		position: 1
		line: 2
		column: 1.
	self
		assert: aStream
		position: 2
		line: 3
		column: 1.