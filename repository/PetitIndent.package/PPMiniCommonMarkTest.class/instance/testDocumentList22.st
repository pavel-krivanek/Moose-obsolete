test-document
testDocumentList22
	string := 
'
- a
- b

  c
- d
'.

	expected := '<ul>
<li>
<p>a</p>
</li>
<li>
<p>b</p>
<p>c</p>
</li>
<li>
<p>d</p>
</li>
</ul>'.

	self parse: string rule: #document to: expected.