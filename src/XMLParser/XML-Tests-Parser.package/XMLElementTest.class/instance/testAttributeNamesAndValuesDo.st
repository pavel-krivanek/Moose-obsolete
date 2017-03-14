tests
testAttributeNamesAndValuesDo
	| element |

	element := self newNode.
	self
		should: [:twoArgumentBlock |
			element attributeNamesAndValuesDo: twoArgumentBlock]
		enumerate: #()
		and: #().

	element := self newElementWithAttributes.
	self
		should: [:twoArgumentBlock |
			element attributeNamesAndValuesDo: twoArgumentBlock]
		enumerate: self attributeNames
		and: self attributeValues.