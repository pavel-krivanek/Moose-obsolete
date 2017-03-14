test-document
testDocumentList16
	string := 
'
- foo
  - bar
    - baz


      bim

'.

	expected := '<ul>
<li>
<p>foo</p>
<ul>
<li>
<p>bar</p>
<ul>
<li>
<p>baz</p>
</li>
</ul>
</li>
</ul>
</li>
</ul>
<code>  bim
</code>'.

	self parse: string rule: #document to: expected.