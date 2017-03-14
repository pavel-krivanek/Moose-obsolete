test-document
testDocumentList09
	string := 
'
- foo

      bar

'.

	expected := '<ul>
<li>
<p>foo</p>
<code>bar
</code>
</li>
</ul>'.

	self parse: string rule: #document to: expected.