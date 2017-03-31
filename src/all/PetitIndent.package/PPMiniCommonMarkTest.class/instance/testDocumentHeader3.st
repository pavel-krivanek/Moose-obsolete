test-document
testDocumentHeader3
	string := 
'
 ### foo
  ## foo
   # foo
'.

	expected := '<h3>foo</h3>
<h2>foo</h2>
<h1>foo</h1>'.

	self parse: string rule: #document to: expected.