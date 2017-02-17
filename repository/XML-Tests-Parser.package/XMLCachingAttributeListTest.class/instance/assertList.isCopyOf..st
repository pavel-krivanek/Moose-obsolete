assertions
assertList: aList isCopyOf: aSecondList
	super assertList: aList isCopyOf: aSecondList.
	"internal dictionary must be copied"
	self
		assert: aList attributeNodesByName = aSecondList attributeNodesByName;
		deny: aList attributeNodesByName == aSecondList attributeNodesByName.