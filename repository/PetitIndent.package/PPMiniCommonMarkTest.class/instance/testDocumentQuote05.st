test-document
testDocumentQuote05
	string := 
'
> Foo
bar
> baz
'.

	expected := '<blockquote>
<p>Foo
bar
baz</p>
</blockquote>'.

	self parse: string rule: #document to: expected.