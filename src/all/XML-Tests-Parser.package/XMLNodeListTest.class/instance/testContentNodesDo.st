tests
testContentNodesDo
	| list |

	list := self emptyList.
	self
		should: [:block | list contentNodesDo: block ]
		enumerate: #().

	list addAll: self listItems.
	self
		should: [:block | list contentNodesDo: block ]
		enumerate: self listContentNodes.