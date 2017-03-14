assertions
assertList: aList copiedFrom: aSecondList equals: aThirdList
	super
		assertList: aList
		copiedFrom: aSecondList
		equals: aThirdList.
	"internal set must be copied"
	self
		assert: aList set = aThirdList set;
		deny: aList set == aSecondList set.