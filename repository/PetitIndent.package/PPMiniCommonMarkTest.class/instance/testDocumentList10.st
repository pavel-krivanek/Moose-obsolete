test-document
testDocumentList10
	string := 
'
  1.  foo

          bar
'.

	expected := '<ol>
<li>
<p>foo</p>
<code>bar
</code>
</li>
</ol>'.

	self parse: string rule: #document to: expected.