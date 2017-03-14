test-document
testDocumentQuote10
	string := 
'
> bar

baz
'.

	expected := '<blockquote>
<p>bar</p>
</blockquote>
<p>baz</p>'.

	self parse: string rule: #document to: expected.