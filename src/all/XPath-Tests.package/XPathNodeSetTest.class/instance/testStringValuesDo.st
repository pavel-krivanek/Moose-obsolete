tests
testStringValuesDo
	| list stringValues |

	list := self emptyList.
	self
		should: [:block | list stringValuesDo: block]
		enumerate: #().

	stringValues := self listWithItems collect: [:each | each stringValue].
	list := self listWithItems.
	self
		should: [:block | list stringValuesDo: block]
		enumerate: stringValues.
	list := self listWithItems reversed.
	self
		should: [:block | list stringValuesDo: block]
		enumerate: stringValues.