tests
testAllButLastDo
	self
		should: [:block | self emptyList allButLastDo: block]
		enumerate: #().
	self
		should: [:block | self listWithItems allButLastDo: block]
		enumerate: self listItems allButLast.