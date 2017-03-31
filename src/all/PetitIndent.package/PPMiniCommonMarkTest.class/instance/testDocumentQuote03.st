test-document
testDocumentQuote03
	string := 
'
    > # Foo
    > bar
    > baz
'.

	expected := '<code>> # Foo
> bar
> baz
</code>'.

	self parse: string rule: #document to: expected.