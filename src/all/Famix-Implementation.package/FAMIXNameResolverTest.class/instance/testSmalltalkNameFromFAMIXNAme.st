tests
testSmalltalkNameFromFAMIXNAme
	self assert: (FAMIXNameResolver smalltalkClassNameFromFamixClassName: #Object) == #Object.
	self assert: (FAMIXNameResolver smalltalkClassNameFromFamixClassName: #FooBarZorkAbsent) == #FooBarZorkAbsent.
	
	self assert: (FAMIXNameResolver smalltalkClassNameFromFamixClassName: #M::FooBarZorkAbsent) == #FooBarZorkAbsent