test-document
testDocumentQuote09
	string := 
'
> foo
>
> bar
'.

	expected := '<blockquote>
<p>foo</p>
<p>bar</p>
</blockquote>'.

	self parse: string rule: #document to: expected.