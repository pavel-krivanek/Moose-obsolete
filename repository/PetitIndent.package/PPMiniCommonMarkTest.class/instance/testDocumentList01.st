test-document
testDocumentList01
	string := 
'
- one

 two
'.

	expected := '<ul>
<li>
<p>one</p>
</li>
</ul>
<p>two</p>'.

	self parse: string rule: #document to: expected.