test-document
testDocument2
	string := 
'
    indented code

paragraph

    more code
'.

	expected := '<code>indented code
</code>
<p>paragraph</p>
<code>more code
</code>'.

	self parse: string rule: #document to: expected.