tests
testAttributeNodeAt
	| element |

	element := self newElementWithAttributes.
	element attributeNodes do: [:each |
		self assert: (element attributeNodeAt: each name) = each].
	self assert:
		(element attributeNodeAt: 'two') = element attributeNodes second.
	self assert:
		(element attributeNodeAt: 'absent') isNil.