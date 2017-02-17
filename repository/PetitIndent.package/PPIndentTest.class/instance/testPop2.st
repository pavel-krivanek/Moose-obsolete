as yet unclassified
testPop2
	p := (a ==> [ :e | b ]) push, a pop.
	
	self assert: p fail: 'a'.