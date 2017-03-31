test-document
testDocumentParagraphs6
	string := 
'
foo
# bar
'.

	expected := '<p>foo</p>
<h1>bar</h1>'.

	self parse: string rule: #document to: expected.