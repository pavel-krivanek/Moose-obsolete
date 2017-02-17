tests
testResolvingName
	self assert: (FAMIXNameResolver smalltalkClassFromFamixClassName: #Object ifAbsent: []) == Object.
	self assert: (FAMIXNameResolver smalltalkClassFromFamixClassName: #FooBarZorkAbsent ifAbsent: [10]) == 10.
	
