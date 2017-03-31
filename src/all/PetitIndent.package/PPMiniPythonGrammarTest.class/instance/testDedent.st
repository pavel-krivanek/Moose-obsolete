test-indentation
testDedent
	dedent := self parserInstanceFor: #dedent.

	context := PPContext new.
	context indentStack push: '  ' asParser.
	self assert: context indentStack size = 1.

	self parse: '   ' rule: #align to: '  ' end: 2.
	self parse: '' rule: #dedent.
	self assert: context indentStack size = 0.
	self fail: '' rule: #dedent.	
		
	context indentStack push: '  ' asParser.
	self fail: '  ' rule: #dedent.
		

	context := PPContext new.
	context indentStack push: '  ' asParser.
	context indentStack push: '  ' asParser.
	context indentStack size = 2.
	
	self assert: dedent parse: '  whatever' to: '  ' end: 0.
	self assert: context indentStack size = 1.
	self assert: dedent fail: '  whatever'.
	self assert: context indentStack size = 1.


	context := PPContext new.
	context indentStack push: '  ' asParser.
	context indentStack push: '  ' asParser.
	context indentStack push: '  ' asParser.
	
	self assert: dedent parse: '  whatever' to: '  ' end: 0.
	self assert: dedent parse: '  whatever' to: '  ' end: 0.
	self assert: dedent fail: '  whatever'.
	
		
	context := PPContext new.
	context indentStack push: '  ' asParser.

	self assert: dedent parse: ''.
	self assert: dedent fail: ''.
	
	context := PPContext new.
	context indentStack push: '  ' asParser.
	context indentStack push: '  ' asParser.

	self assert: dedent fail: '
    foo'.

	context := PPContext new.
	context indentStack push: '  ' asParser.
	context indentStack push: '  ' asParser.
	parser := 'a' asParser, dedent.
	self assert: parser fail: 'a 
    not dedent'.