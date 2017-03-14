tests
testAllButFirstDo
	self
		should: [:block | self emptyList allButFirstDo: block]
		enumerate: #().
	self
		should: [:block | self listWithItems allButFirstDo: block]
		enumerate: self listItems allButFirst.