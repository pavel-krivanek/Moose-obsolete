classes
testAbstractMethodAnnotation
	| definingClassName method methodName fmClass |
	definingClassName := TheRoot mooseName.
	methodName := (TheRoot >> #sendingSubclassResponsibility) mooseName.
	method := self model entityNamed: methodName.
	self assert: method isNil not.
	self assert: method belongsTo equals: (self model entityNamed: TheRoot mooseName).
	self assert: method hasClassScope not.
	self
		assert: method signature
		equals: (FAMIXNameResolver signatureFromSmalltalkSelectorOn: #sendingSubclassResponsibility).
	self assert: method isPublic.
	self assert: method isAbstract.
	fmClass := self model entityNamed: definingClassName.
	self assert: fmClass isAbstract