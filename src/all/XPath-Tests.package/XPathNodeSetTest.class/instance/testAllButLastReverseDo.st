tests
testAllButLastReverseDo
	| list |

	list := self emptyList.
	self
		should: [:block | list allButLastReverseDo: block ]
		enumerate: #().

	list := self listWithItems.
	self
		should: [:block | list allButLastReverseDo: block]
		enumerate: self listItems allButLast reversed.