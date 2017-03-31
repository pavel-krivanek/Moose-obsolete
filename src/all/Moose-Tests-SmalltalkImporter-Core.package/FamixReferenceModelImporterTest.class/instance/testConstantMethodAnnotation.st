classes
testConstantMethodAnnotation
	| methodUniqueName method methodName |
	methodName := #constantReturningMethod.
	methodUniqueName := (TheRoot >> methodName) mooseName.
	method := self model entityNamed: methodUniqueName.
	self assert: method isNil not.
	self assert: method belongsTo equals: (self model entityNamed: TheRoot mooseName).
	self assert: method hasClassScope not.
	self assert: method signature equals: (FAMIXNameResolver signatureFromSmalltalkSelectorOn: methodName).
	self assert: method isPublic.
	self assert: method isConstant