test-document
testDocumentList07
	string := 
'
   > > 1.  one
>>
>>     two

'.

	expected := '<blockquote>
<blockquote>
<ol>
<li>
<p>one</p>
<p>two</p>
</li>
</ol>
</blockquote>
</blockquote>'.

	self parse: string rule: #document to: expected.