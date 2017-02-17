test-document
testDocumentList17
	string := 
'
- foo
- bar


- baz
- bim

'.

	expected := '<ul>
<li>
<p>foo</p>
</li>
<li>
<p>bar</p>
</li>
</ul>
<ul>
<li>
<p>baz</p>
</li>
<li>
<p>bim</p>
</li>
</ul>'.

	self parse: string rule: #document to: expected.