test-document
testDocumentList18
	string := 
'
-   foo

    notcode

-   foo


    code
'.

	expected := '<ul>
<li>
<p>foo</p>
<p>notcode</p>
</li>
<li>
<p>foo</p>
</li>
</ul>
<code>code
</code>'.

	self parse: string rule: #document to: expected.