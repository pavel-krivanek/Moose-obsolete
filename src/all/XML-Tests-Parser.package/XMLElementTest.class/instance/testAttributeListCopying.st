tests
testAttributeListCopying
	| element attributeListCopy |

	element := self newElementWithAttributes.
	attributeListCopy := element attributeNodes copy.
	self
		assert: attributeListCopy = element attributeNodes;
		deny: attributeListCopy == element attributeNodes;
		assert: element attributeNodes observer == element;
		assert: attributeListCopy observer isNil.