assertions
assertList: aList copiedFrom: aSecondList equals: aThirdList
	super
		assertList: aList
		copiedFrom: aSecondList
		equals: aThirdList.
	"internal dictionary must be copied"
	self
		assert: aList attributeNodesByName = aThirdList attributeNodesByName;
		deny: aList attributeNodesByName == aSecondList attributeNodesByName.