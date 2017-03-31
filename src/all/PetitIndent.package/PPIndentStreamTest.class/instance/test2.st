as yet unclassified
test2
	aStream := PPStream on:
'a
b

cd'.
	
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
		line: 1
		column: 2.
	self
		assert: aStream
		position: 2
		line: 2
		column: 1.
	self
		assert: aStream
		position: 3
		line: 2
		column: 2.
	self
		assert: aStream
		position: 4
		line: 3
		column: 1.
	self
		assert: aStream
		position: 5
		line: 4
		column: 1.
	self
		assert: aStream
		position: 6
		line: 4
		column: 2.
	self
		assert: aStream
		position: 7
		line: 4
		column: 3.
	
	self should: [ aStream line: 8 ] raise: Error.
	self should: [ aStream column: 8 ] raise: Error.	