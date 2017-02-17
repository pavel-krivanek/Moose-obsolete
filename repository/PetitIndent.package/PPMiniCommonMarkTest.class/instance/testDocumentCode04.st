test-document
testDocumentCode04
	string := 
'
 >     Foo
'.

	expected := '<blockquote>
<code>Foo
</code>
</blockquote>'.

	self parse: string rule: #document to: expected.