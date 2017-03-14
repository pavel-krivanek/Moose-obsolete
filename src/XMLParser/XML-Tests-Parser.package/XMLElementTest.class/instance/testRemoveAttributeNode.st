tests
testRemoveAttributeNode
	| element |

	element := self newElementWithAttributes.
	element attributeNodes copy do: [:each |
		self
			assert: (element removeAttributeNode: each) = each ;
			deny: (element attributeNodes includes: each).
		self
			should: [element removeAttribute: each]
			raise: Error].
	self assert: element attributeNodes isEmpty.