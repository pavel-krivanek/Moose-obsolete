test-indentation
testAlign
	align := self parserInstanceFor: #align.
	
	self assert: align parse: '' to: ''.
	self assert: align parse: '   ' end: 0.
	
	context indentStack push: '   ' asParser.
	self assert: align parse: '   ' end: 3.
	

	context := PPContext new.
	context indentStack push: '  ' asParser.
	context indentStack push: '  ' asParser.
	self assert: align parse: '      ' end: 4.