test-document
testDocumentList06
	string := 
'
 -    one

      two
'.

	expected := '<ul>
<li>
<p>one</p>
<p>two</p>
</li>
</ul>'.

	self parse: string rule: #document to: expected.