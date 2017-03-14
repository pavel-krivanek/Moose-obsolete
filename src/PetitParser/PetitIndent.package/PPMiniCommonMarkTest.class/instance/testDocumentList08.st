test-document
testDocumentList08
	string := 
'
>>- one
>>
  >  > two

'.

	expected := '<blockquote>
<blockquote>
<ul>
<li>
<p>one</p>
</li>
</ul>
<p>two</p>
</blockquote>
</blockquote>'.

	self parse: string rule: #document to: expected.