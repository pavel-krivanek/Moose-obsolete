as yet unclassified
testPush2
	p := (a ==> [ :e | 'aa' asParser ]) push, top.
	
	self assert: p fail: 'b'.