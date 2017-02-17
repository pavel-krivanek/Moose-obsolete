tests
testRemoveAttributeIfAbsent
	| element |

	element := self newElementWithAttributes.
	element attributeNodes copy do: [:each |
		self assert:
			(element
				removeAttribute: each name
				ifAbsent: [self fail]) = each value.
		self deny: (element includesAttribute: each name).
		self assert:
			(element
				removeAttribute: each name
				ifAbsent: [#absent]) = #absent].
	self assert: element attributeNodes isEmpty.