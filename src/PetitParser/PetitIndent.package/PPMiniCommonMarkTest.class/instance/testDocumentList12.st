test-document
testDocumentList12
	string := 
'
1.      indented code

   paragraph

       more code
'.

	expected := '<ol>
<li>
<code> indented code
</code>
<p>paragraph</p>
<code>more code
</code>
</li>
</ol>'.

	self parse: string rule: #document to: expected.