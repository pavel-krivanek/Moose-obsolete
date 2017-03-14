test-document
testDocumentCode01
	string := 
'
    
    foo
    
'.

	expected := '<code>foo
</code>'.

	self parse: string rule: #document to: expected.