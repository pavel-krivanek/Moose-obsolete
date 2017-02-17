tests
testAttributeNamesAndValuesDo
	| list |

	list := self emptyList.
	self
		should: [:twoArgumentBlock |
			list attributeNamesAndValuesDo: twoArgumentBlock]
		enumerate: #()
		and: #().

	list := self listWithItems.
	self
		should: [:twoArgumentBlock |
			list attributeNamesAndValuesDo: twoArgumentBlock]
		enumerate: self attributeNames
		and: self attributeValues.