test-document
testDocumentHeader1
	string := 
'
#5 bolt
'.

	expected := '<p>#5 bolt</p>'.

	self parse: string rule: #document to: expected.