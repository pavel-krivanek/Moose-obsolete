tests
testIncludesAttribute
	| element |

	element := self newElementWithAttributes.
	element attributeNames do: [:each |
		self assert: (element includesAttribute: each).
		element removeAttribute: each.
		self deny: (element includesAttribute: each)].