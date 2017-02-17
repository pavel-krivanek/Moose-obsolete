test-paragraph
testParagraph
	self parse: 'abc
def' rule: #paragraph.
	self assert: result = '<p>abc
def</p>'.
	
	self parse: 'abc
     def' rule: #paragraph.
	self assert: result = '<p>abc
def</p>'.

	context := PPContext new.
	context indentStack push: quote.
	self parse: ' abc
def' rule: #paragraph.
	self assertResult: '<p>abc
def</p>'.

	context := PPContext new.
	context indentStack push: quote.
	self parse: 'abc
> def' rule: #paragraph.
	self assertResult: '<p>abc
def</p>'.