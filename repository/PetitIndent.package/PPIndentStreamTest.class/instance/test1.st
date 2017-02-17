as yet unclassified
test1
	aStream := PPStream on:
'Hi there
	how are you?'.
	
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
		position: 3
		line: 1
		column: 4.

	self
		assert: aStream
		position: 8
		line: 1
		column: 9.
				
	self
		assert: aStream
		position: 9
		line: 2
		column: 1.
		
	self
		assert: aStream
		position: 13
		line: 2
		column: 5.
		
	self
		assert: aStream
		position: 22
		line: 2
		column: 14.