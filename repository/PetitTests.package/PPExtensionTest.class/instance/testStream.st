testing-stream
testStream
	| dot stream |
	dot := (Character codePoint: 183) asString.
	stream := 'abc' readStream asPetitStream.
	self assert: stream class equals: PPStream.
	self assert: stream printString equals: dot , 'abc'.
	self assert: stream peek equals: $a.
	self assert: stream uncheckedPeek equals: $a.
	self assert: stream next equals: $a.
	self assert: stream printString equals: 'a' , dot , 'bc'.
	self assert: stream asPetitStream equals: stream