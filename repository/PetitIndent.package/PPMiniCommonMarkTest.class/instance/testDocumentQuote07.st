test-document
testDocumentQuote07
	string := 
'
>>>     foo
>>      bar
>       baz
'.

	expected := '<blockquote>
<blockquote>
<blockquote>
<code>foo
</code>
</blockquote>
<code> bar
</code>
</blockquote>
<code>  baz
</code>
</blockquote>'.

	self parse: string rule: #document to: expected.