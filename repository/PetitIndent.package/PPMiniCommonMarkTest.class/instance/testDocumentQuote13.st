test-document
testDocumentQuote13
	string := 
'
>>> foo
> bar
>>baz

'.

	expected := '<blockquote>
<blockquote>
<blockquote>
<p>foo
bar
baz</p>
</blockquote>
</blockquote>
</blockquote>'.

	self parse: string rule: #document to: expected.