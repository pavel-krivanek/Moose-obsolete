tests
testHeader	
	| headers module |
	headers := model entities select: [ :e | e class == FAMIXHeader ].
	module := model entities detect: [ :e | e class == FAMIXModule ].
	self assert: headers size equals: 2.
	self assert: (headers allSatisfy: [ :h | h incomingIncludeRelations anyOne from == module compilationUnit ])
