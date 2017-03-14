as yet unclassified
testEmptyLine
	parser := self parserInstanceFor: #emptyLine.
	
	self assert: parser parse: ''.
	self assert: parser parse: '   '.