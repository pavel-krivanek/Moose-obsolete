tests
testElementsDo
	| list |

	list := self emptyList.
	self
		should: [:block | list elementsDo: block ]
		enumerate: #().

	list addAll: self listItems.
	self
		should: [:block | list elementsDo: block ]
		enumerate: self listElements.