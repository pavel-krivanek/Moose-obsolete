test-lists
testListContent
	context := PPContext new.
	context indentStack push: quote.
	context indentStack push: '  ' asParser.

	self parse: 'one
>   two' rule: #listContent.
	
	self assert: result = '<p>one
two</p>'.

	context := PPContext new.
	context indentStack push: quote.
	context indentStack push: '  ' asParser.

	self parse: 'one
> two' rule: #listContent.
	
	self assert: result = '<p>one
two</p>'.

	context := PPContext new.
	context indentStack push: quote.
	context indentStack push: '  ' asParser.

	self parse: '> one
>   > two' rule: #listContent.
	
	self assert: result = '<blockquote>
<p>one
two</p>
</blockquote>'.