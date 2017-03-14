test-document
testDocumentList23
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
<ul>
<li>
<p>b</p>
<p>c</p>
</li>
</ul>
</li>
<li>
<p>d</p>
</li>
</ul>'.

	self parse: string rule: #document to: expected.