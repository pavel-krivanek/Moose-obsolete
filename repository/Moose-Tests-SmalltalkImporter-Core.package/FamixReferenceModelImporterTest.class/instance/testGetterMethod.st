classes
testGetterMethod
	| methodUniqueName method methodName |
	methodName := #x.
	methodUniqueName := (TheRoot >> methodName) mooseName.
	method := self model entityNamed: methodUniqueName.
	self assert: method isNil not.
	self assert: method hasClassScope not.
	self assert: method signature equals: (FAMIXNameResolver signatureFromSmalltalkSelectorOn: methodName).
	self assert: method isPublic.
	self assert: method isPureAccessor.
	self assert: method isGetter