tests
testDemoosifyGlobal
	| myGlobal |
	myGlobal := 'XXX'.
	self assert: (FAMIXNameResolver demoosifyGlobal: (FAMIXNameResolver moosifyGlobal: myGlobal)) equals: myGlobal