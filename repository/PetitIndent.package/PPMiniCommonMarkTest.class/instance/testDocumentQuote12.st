test-document
testDocumentQuote12
	string := 
'
> > > foo
bar
'.

	expected := '<blockquote>
<blockquote>
<blockquote>
<p>foo
bar</p>
</blockquote>
</blockquote>
</blockquote>'.

	self parse: string rule: #document to: expected.