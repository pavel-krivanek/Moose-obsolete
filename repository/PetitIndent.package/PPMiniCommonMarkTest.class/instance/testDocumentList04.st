test-document
testDocumentList04
	string := 
'
 -    one

     two
'.

	expected := '<ul>
<li>
<p>one</p>
</li>
</ul>
<code> two
</code>'.

	self parse: string rule: #document to: expected.