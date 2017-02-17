test-document
testDocumentQuote02
	string := 
'
   > # Foo
   > bar
 > baz
'.

	expected := '<blockquote>
<h1>Foo</h1>
<p>bar
baz</p>
</blockquote>'.

	self parse: string rule: #document to: expected.