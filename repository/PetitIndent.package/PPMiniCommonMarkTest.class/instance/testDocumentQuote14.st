test-document
testDocumentQuote14
	string := 
'
>     code

>    not code
'.

	expected := '<blockquote>
<code>code
</code>
</blockquote>
<blockquote>
<p>not code</p>
</blockquote>'.

	self parse: string rule: #document to: expected.