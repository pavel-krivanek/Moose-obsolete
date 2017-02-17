assertions
assertList: aList isCopyOf: aSecondList
	super assertList: aList isCopyOf: aSecondList.
	"internal set must be copied"
	self
		assert: aList set = aSecondList set;
		deny: aList set == aSecondList set.