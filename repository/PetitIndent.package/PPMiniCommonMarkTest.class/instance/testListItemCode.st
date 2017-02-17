test-lists
testListItemCode
	context := PPContext new.
	self parse: '-     one' rule: #listItem.
	self assertResult: '<li>
<code>one
</code>
</li>'	.