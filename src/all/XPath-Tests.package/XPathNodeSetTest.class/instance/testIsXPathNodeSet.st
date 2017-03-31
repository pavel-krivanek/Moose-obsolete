tests
testIsXPathNodeSet
	self
		assert: self emptyList isXPathNodeSet;
		deny: self listSpecies new isXPathNodeSet