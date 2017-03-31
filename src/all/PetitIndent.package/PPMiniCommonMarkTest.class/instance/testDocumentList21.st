test-document
testDocumentList21
	string := 
'
* a
* 

* c
'.

	expected := '<ul>
<li>
<p>a</p>
</li>
<li>
</li>
<li>
<p>c</p>
</li>
</ul>'.

	self parse: string rule: #document to: expected.