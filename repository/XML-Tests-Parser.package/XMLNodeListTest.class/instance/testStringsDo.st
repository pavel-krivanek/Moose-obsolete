tests
testStringsDo
	| list |

	list := self emptyList.
	self
		should: [:block | list stringsDo: block ]
		enumerate: #().

	list addAll: self listItems.
	self
		should: [:block | list stringsDo: block ]
		enumerate: self listStrings.