test-document
testDocumentList25
	string := '
- a
  - b
'.

	expected := '<ul>
<li>
<p>a</p>
<ul>
<li>
<p>b</p>
</li>
</ul>
</li>
</ul>'.

	self parse: string rule: #document to: expected.