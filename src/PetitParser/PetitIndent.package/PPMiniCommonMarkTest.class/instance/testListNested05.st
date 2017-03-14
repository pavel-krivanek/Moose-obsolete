test-lists
testListNested05

	context := PPContext new.
	self parse: '- one
  - two
    - three
  - four
    
    five' rule: #list.
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
<p>five</p>
</li>
</ul>
</li>
</ul>'.
	self assert: context indentStack isEmpty.