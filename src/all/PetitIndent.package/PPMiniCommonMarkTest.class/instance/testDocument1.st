test-document
testDocument1
	string := 
'
Hi There

    this is a
     code
'.

	expected := '<p>Hi There</p>
<code>this is a
 code
</code>'.

	self parse: string rule: #document to: expected.