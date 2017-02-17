tests
testIncludesElement
	| root |
	
	root := self newNodeWithElements firstElement.
	self deny: (root includesElement: 'absent').
	root elements copy do: [:each |
		self assert: (root includesElement: each name).
		root removeNode: each.
		self deny: (root includesElement: each name)].