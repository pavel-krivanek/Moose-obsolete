test-lists
testListNested03

	context := PPContext new.
	self parse: '- one
  - two
    - three
  - four' rule: #list.
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
<li>
<p>four</p>
</li>
</ul>
</li>
</ul>'.
	self assert: context indentStack isEmpty.