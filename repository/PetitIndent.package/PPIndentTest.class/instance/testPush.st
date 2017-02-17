as yet unclassified
testPush
	p := (a ==> [ :e | 'aa' asParser ]) push, top.
	
	self assert: p parse: 'aaa'.