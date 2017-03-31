test-document
testDocumentList14
	string := 
'
-    foo

     bar
'.

	expected := '<ul>
<li>
<p>foo</p>
<p>bar</p>
</li>
</ul>'.

	self parse: string rule: #document to: expected.