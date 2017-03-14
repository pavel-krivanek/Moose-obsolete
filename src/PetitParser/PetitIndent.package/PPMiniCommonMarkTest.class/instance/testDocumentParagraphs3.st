test-document
testDocumentParagraphs3
	string := 
'
  aaa
 bbb
'.

	expected := '<p>aaa
bbb</p>'.

	self parse: string rule: #document to: expected.