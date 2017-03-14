test-document
testDocumentQuote08
	string := 
'
> foo

> bar
'.

	expected := '<blockquote>
<p>foo</p>
</blockquote>
<blockquote>
<p>bar</p>
</blockquote>'.

	self parse: string rule: #document to: expected.