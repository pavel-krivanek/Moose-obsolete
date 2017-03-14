tests
testStringValuesDo
	| list |

	list := self emptyList.
	self
		should: [:block | list stringValuesDo: block]
		enumerate: #().

	list := self listWithItems.
	self
		should: [:block | list stringValuesDo: block]
		enumerate: (self listWithItems collect: [:each | each stringValue]).