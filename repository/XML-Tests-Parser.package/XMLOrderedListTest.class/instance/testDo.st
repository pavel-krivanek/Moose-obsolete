tests
testDo
	self
		should: [:block | self emptyList do: block] enumerate: #();
		should: [:block | self listWithItems do: block] enumerate: self listItems