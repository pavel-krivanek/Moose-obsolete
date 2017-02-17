expecting-collections
equalIgnoringOrder: anotherCollection
	self expect: [ receiver sorted = anotherCollection sorted] 
		describeShould:  ['Expected <1p> to equal <2p> ignoring order, but didn''t.' 
				expandMacrosWith: receiver 
				with: anotherCollection ]  
		describeShouldNot: ['Expected <1p> to not equal <2p> ignoring order, but did.'
			 	expandMacrosWith: receiver
				with: anotherCollection ]