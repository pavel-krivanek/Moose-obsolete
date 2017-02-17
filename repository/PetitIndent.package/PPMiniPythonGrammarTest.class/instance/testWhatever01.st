test-grammar
testWhatever01
	
	parser := self parserInstanceFor: #whatever.
	self assert: parser parse: '(foo):'.

	self assert: parser parse: '(foo, 
	bar):'.


