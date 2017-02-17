tests
testPrefix
	| attribute |

	attribute := self newNode.
	self assert: attribute prefix = ''.

	attribute name: 'one'.
	self assert: attribute prefix = ''.

	attribute name: 'prefix:two'.
	self assert: attribute prefix = 'prefix'.

	attribute name: 'three'.
	self assert: attribute prefix = ''.