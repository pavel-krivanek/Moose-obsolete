test-lists
testListNested01

	context := PPContext new.
	self parse: '- one
  - two' rule: #list.
	self assertResult: '<ul>
<li>
<p>one</p>
<ul>
<li>
<p>two</p>
</li>
</ul>
</li>
</ul>'.
	self assert: context indentStack isEmpty.
	
	context := PPContext new.
	self parse: '- one
  - two
    - three' rule: #list.
	self assertResult: '<ul>
<li>
<p>one</p>
<ul>
<li>
<p>two</p>
<ul>
<li>
<p>three</p>
</li>
</ul>
</li>
</ul>
</li>
</ul>'.
	self assert: context indentStack isEmpty.