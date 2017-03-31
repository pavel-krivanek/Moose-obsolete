test-document
testDocumentList03
	string := 
'
- one

- two
'.

	expected := '<ul>
<li>
<p>one</p>
</li>
<li>
<p>two</p>
</li>
</ul>'.

	self parse: string rule: #document to: expected.