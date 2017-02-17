test-document
testDocumentParagraphs2
	string := 
'
aaa
bbb

ccc
ddd
'.

	expected := '<p>aaa
bbb</p>
<p>ccc
ddd</p>'.

	self parse: string rule: #document to: expected.