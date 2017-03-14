test-document
testDocumentList19
	string := 
'
- a
 - b
  - c
   - d
  - e
 - f
- g
'.

	expected := '<ul>
<li>
<p>a</p>
</li>
<li>
<p>b</p>
</li>
<li>
<p>c</p>
</li>
<li>
<p>d</p>
</li>
<li>
<p>e</p>
</li>
<li>
<p>f</p>
</li>
<li>
<p>g</p>
</li>
</ul>'.

	self parse: string rule: #document to: expected.