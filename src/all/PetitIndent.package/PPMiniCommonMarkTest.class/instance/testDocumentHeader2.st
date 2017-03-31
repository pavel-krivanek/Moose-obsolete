test-document
testDocumentHeader2
	string := 
'

# bolt
#5 bolt
'.

	expected := '<h1>bolt</h1>
<p>#5 bolt</p>'.

	self parse: string rule: #document to: expected.