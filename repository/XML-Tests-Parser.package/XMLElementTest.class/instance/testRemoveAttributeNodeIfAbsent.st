tests
testRemoveAttributeNodeIfAbsent
	| element |

	element := self newElementWithAttributes.
	element attributeNodes copy do: [:each |
		self assert:
			(element
				removeAttributeNode: each
				ifAbsent: [self fail]) = each.
		self deny: (element attributeNodes includes: each).
		self assert:
			(element
				removeAttributeNode: each
				ifAbsent: [#absent]) = #absent].
	self assert: element attributeNodes isEmpty.