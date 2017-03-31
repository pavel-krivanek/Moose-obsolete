tests
testHasPrefix
	| attribute |

	attribute := self newNode.
	self deny: attribute hasPrefix.

	attribute name: 'one'.
	self deny: attribute hasPrefix.

	attribute name: 'prefix:two'.
	self assert: attribute hasPrefix.

	attribute name: 'three'.
	self deny: attribute hasPrefix.