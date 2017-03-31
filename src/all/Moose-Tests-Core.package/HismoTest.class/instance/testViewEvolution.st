testing - class history
testViewEvolution
	
	self shouldnt: [ testData simpleHistory allClassHistories do: [:each | each viewEvolution delete ]] raise: Error.
	