test-document
testDocumentCode02
	string := 
'
    foo
  bar
'.

	expected := '<code>foo
</code>
<p>bar</p>'.

	self parse: string rule: #document to: expected.