tests
testAttributeNamesDo
	| list |

	list := self emptyList.
	self
		should: [:block | list attributeNamesDo: block]
		enumerate: #().

	list := self listWithItems.
	self
		should: [:each | list attributeNamesDo: each]
		enumerate: self attributeNames.