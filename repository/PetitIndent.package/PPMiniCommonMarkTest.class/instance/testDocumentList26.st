test-document
testDocumentList26
	string := '
- a
  - b
  - c

- d
  - e
  - f
'.

	expected := '<ul>
<li>
<p>a</p>
<ul>
<li>
<p>b</p>
</li>
<li>
<p>c</p>
</li>
</ul>
</li>
<li>
<p>d</p>
<ul>
<li>
<p>e</p>
</li>
<li>
<p>f</p>
</li>
</ul>
</li>
</ul>'.

	self parse: string rule: #document to: expected.