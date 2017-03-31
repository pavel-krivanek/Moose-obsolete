test-lists
testList	
	
	context := PPContext new.
	self parse: '- one' rule: #list.
	self assertResult: '<ul>
<li>
<p>one</p>
</li>
</ul>'.

	self assert: context indentStack isEmpty.
	
	context := PPContext new.
	self parse: '- one
- two' rule: #list.
	self assertResult: '<ul>
<li>
<p>one</p>
</li>
<li>
<p>two</p>
</li>
</ul>'	.
	self assert: context indentStack isEmpty.
	
	context := PPContext new.
	self parse: '- one

- two' rule: #list.
	self assertResult: '<ul>
<li>
<p>one</p>
</li>
<li>
<p>two</p>
</li>
</ul>'	.
	self assert: context indentStack isEmpty.
	
	context := PPContext new.
	context indentStack push: quote.
	self parse: '- one
>- two' rule: #list.
	self assertResult: '<ul>
<li>
<p>one</p>
</li>
<li>
<p>two</p>
</li>
</ul>'	.
	self assert: context indentStack size = 1.
	
	context := PPContext new.
	self parse: '- one
- ' rule: #list.
	self assertResult: '<ul>
<li>
<p>one</p>
</li>
<li>
</li>
</ul>'	.	