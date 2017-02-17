as yet unclassified
testPop
	p := (a ==> [ :e | a ]) push, a pop.
	
	self assert: p parse: 'a'.