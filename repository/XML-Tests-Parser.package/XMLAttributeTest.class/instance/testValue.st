tests
testValue
	| attribute |

	attribute := self newNode.
	self
		assert: attribute value = '';
		assert: (attribute value: 'test') == attribute;
		assert: attribute value = 'test'.