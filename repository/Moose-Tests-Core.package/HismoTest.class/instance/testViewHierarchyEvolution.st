testing - ui
testViewHierarchyEvolution
	
	| classHistories history |
	history := testData simpleHistory.
	classHistories := history allClassHistories.
	self shouldnt: [ classHistories viewHierarchyEvolution delete ] raise: Error