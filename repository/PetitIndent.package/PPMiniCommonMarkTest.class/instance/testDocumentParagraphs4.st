test-document
testDocumentParagraphs4
	string := 
'
foo
> bar
'.

	expected := '<p>foo</p>
<blockquote>
<p>bar</p>
</blockquote>'.

	self parse: string rule: #document to: expected.