test-lists
testListItem
	self parse: '- one' rule: #listItem.
	
	self assert: result = '<li>
<p>one</p>
</li>'.
	self assert: context indentStack size = 0.

	context := PPContext new.
	context indentStack push: quote.
	self parse: '- > one
>   > two' rule: #listItem.
	self assert: result = '<li>
<blockquote>
<p>one
two</p>
</blockquote>
</li>'.

	context := PPContext new.
	context indentStack push: quote.
	self parse: '- > one
>
>       > two' rule: #listItem.
	self assertResult: '<li>
<blockquote>
<p>one</p>
</blockquote>
<code>> two
</code>
</li>'.

	context := PPContext new.
	self parse: '- ' rule: #listItem.
	
	self assert: result = '<li>
</li>'.
	self assert: context indentStack size = 0.