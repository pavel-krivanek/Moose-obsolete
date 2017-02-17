tests
testSortWithCycle
	MalGraphFixture cycleGraph: sorter.
	self
		should: [ sorter run ]
		raise: Error