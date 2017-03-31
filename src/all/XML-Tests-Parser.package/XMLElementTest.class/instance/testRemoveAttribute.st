tests
testRemoveAttribute
	| element |

	element := self newElementWithAttributes.
	element attributeNodes copy do: [:each |
		self
			assert: (element removeAttribute: each name) = each value;
			deny: (element includesAttribute: each name).
		self
			should: [element removeAttribute: each name]
			raise: Error].
	self assert: element attributeNodes isEmpty.