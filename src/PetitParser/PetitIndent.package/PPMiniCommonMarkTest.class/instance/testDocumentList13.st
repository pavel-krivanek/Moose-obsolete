test-document
testDocumentList13
	string := 
'
-    foo

  bar
'.

	expected := '<ul>
<li>
<p>foo</p>
</li>
</ul>
<p>bar</p>'.

	self parse: string rule: #document to: expected.