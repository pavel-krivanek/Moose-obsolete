test-quotes
testQuoteBlock
	self parse: '> foo' rule: #quoteBlock.
	self assert: result = '<blockquote>
<p>foo</p>
</blockquote>'.

	context := PPContext new.
	self parse: '> foo
> bar' rule: #quoteBlock.
	self assert: result = '<blockquote>
<p>foo
bar</p>
</blockquote>'.

	context := PPContext new.
	self parse: '>> foo
>> bar' rule: #quoteBlock.
	self assertResult: '<blockquote>
<blockquote>
<p>foo
bar</p>
</blockquote>
</blockquote>'.

	context := PPContext new.
	self parse: '># Foo' rule: #quoteBlock.
	self assert: result = '<blockquote>
<h1>Foo</h1>
</blockquote>'.

	context := PPContext new.
	self parse: '>     foo
>
>     bar'  rule: #quoteBlock.
	self assertResult: '<blockquote>
<code>foo

bar
</code>
</blockquote>'.

	context := PPContext new.
	self parse: '>' rule: #quoteBlock.
	self assertResult: '<blockquote>
</blockquote>'.


	context := PPContext new.
	self parse: '>
>  
> ' rule: #quoteBlock.
	self assertResult: '<blockquote>
</blockquote>'.




	context := PPContext new.
	self parse: '>
> foo
>  ' rule: #quoteBlock.
	self assertResult: '<blockquote>
<p>foo</p>
</blockquote>'.
