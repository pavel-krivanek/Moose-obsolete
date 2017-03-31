test-document
testDocumentQuote06
	string := 
'
>     foo
    bar

'.

	expected := '<blockquote>
<code>foo
</code>
</blockquote>
<code>bar
</code>'.

	self parse: string rule: #document to: expected.