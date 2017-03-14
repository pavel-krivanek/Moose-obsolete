test-document
testDocumentList20
	string := 
'
- a
- b

- c
'.

	expected := '<ul>
<li>
<p>a</p>
</li>
<li>
<p>b</p>
</li>
<li>
<p>c</p>
</li>
</ul>'.

	self parse: string rule: #document to: expected.