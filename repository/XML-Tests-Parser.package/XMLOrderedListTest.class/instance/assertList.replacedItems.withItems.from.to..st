assertions
assertList: aList replacedItems: anOldItemCollection withItems: aNewItemCollection from: aStart to: aStop
	"items before aStart should not have been replaced"
	1 to: aStart - 1 do: [:i |
		self assert: (aList at: i) = (anOldItemCollection at: i)].

	"items within the range should be replaced"
	aStart to: aStop do: [:i |
		self assert: (aList at: i) = (aNewItemCollection at: i)].

	"items after aStop should not have been replaced"
	aStop + 1 to: aList size do: [:i |
		self assert: (aList at: i) = (anOldItemCollection at: i)].