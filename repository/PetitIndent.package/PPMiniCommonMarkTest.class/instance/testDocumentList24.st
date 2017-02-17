test-document
testDocumentList24
	string := '
* a
  > b
  >
* c
'.

	expected := '<ul>
<li>
<p>a</p>
<blockquote>
<p>b</p>
</blockquote>
</li>
<li>
<p>c</p>
</li>
</ul>'.

	self parse: string rule: #document to: expected.