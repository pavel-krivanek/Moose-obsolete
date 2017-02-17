test-indentation
testIndent
"	parser := self parserInstanceFor: #indent.
	align := self parserInstanceFor: #align.
"
	self parse: '   ' rule: #align to: '' end: 0.
	self parse: '   ' rule: #indent to: '   ' end: 0.
	self assert: context indentStack size = 1.
	self parse: '   ' rule: #align to: '   ' end: 3.
	
	context := PPContext new.
	context indentStack push: '  ' asParser.
	self parse: '  
    foo' rule: #indent to: '  ' end: 0.