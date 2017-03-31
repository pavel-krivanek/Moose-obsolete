test-document
testDocumentList15
	string := 
'
- foo


  bar
- baz
'.

	expected := '<ul>
<li>
<p>foo</p>
</li>
</ul>
<p>bar</p>
<ul>
<li>
<p>baz</p>
</li>
</ul>'.

	self parse: string rule: #document to: expected.