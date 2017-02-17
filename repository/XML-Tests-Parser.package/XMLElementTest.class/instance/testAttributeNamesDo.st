tests
testAttributeNamesDo
	| element |

	element := self newNode.
	self
		should: [:block | element attributeNamesDo: block]
		enumerate: #().

	element := self newElementWithAttributes.
	self
		should: [:block | element attributeNamesDo: block]
		enumerate: element attributeNames.