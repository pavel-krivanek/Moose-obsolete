tests
testStringNodesDo
	| list |

	list := self emptyList.
	self
		should: [:block | list stringNodesDo: block ]
		enumerate: #().

	list addAll: self listItems.
	self
		should: [:block | list stringNodesDo: block ]
		enumerate: self listStringNodes.