test-document
testDocument3
	string := 
'
   foo

bar

'.

	expected := '<p>foo</p>
<p>bar</p>'.

	self parse: string rule: #document to: expected.