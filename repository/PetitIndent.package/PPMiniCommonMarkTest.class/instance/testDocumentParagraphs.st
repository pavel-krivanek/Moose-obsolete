test-document
testDocumentParagraphs
	string := 
'
aaa


bbb
'.

	expected := '<p>aaa</p>
<p>bbb</p>'.

	self parse: string rule: #document to: expected.