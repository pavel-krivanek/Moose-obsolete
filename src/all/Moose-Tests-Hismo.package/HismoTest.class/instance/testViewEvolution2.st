testing - class history
testViewEvolution2
	testData simpleHistory allClassHistories
		do: [ :each | 
			| view |
			view := RTMondrian new.
			self assert: view view numberOfElements equals: 0.
			self shouldnt: [ each viewEvolutionOn: view ] raise: Error.
			self assert: view view numberOfElements > 0 ]