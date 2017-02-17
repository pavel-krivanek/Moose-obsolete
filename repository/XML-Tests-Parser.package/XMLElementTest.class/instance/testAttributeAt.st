tests
testAttributeAt
	| element |

	element := self newElementWithAttributes.
	element attributeNodes do: [:each |
		self assert: (element attributeAt: each name) = each value].
	self assert: (element attributeAt: 'absent') = ''.