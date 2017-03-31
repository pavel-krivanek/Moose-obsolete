testing - ui
testViewEvolutionMatrix
	
	| classHistories history |
	history := testData simpleHistory.
	classHistories := history allClassHistories.
	self shouldnt: [ classHistories viewEvolutionMatrix delete ] raise: Error