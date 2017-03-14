tests
testAttributeNodesDo
	| element |

	element := self newNode.
	self
		should: [:block | element attributeNodesDo: block]
		enumerate: #().

	element := self newElementWithAttributes.
	self
		should: [:block | element attributeNodesDo: block]
		enumerate: element attributeNodes.