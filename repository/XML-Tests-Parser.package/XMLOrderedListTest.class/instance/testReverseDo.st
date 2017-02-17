tests
testReverseDo
	self
		should: [:block | self emptyList reverseDo: block] enumerate: #();
		should: [:block | self listWithItems reverseDo: block] enumerate: self listItems reversed.