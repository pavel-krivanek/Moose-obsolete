reference model reification
testMethodReification
	"self run: #testMethodReification"

	"self debug: #testMethodReification"

	| methodUniqueName method methodName |
	methodName := #accessSuperclassInstVar.
	methodUniqueName := FAMIXNameResolver
		uniqueNameForMethodWithSmalltalkSelector: methodName
		hasClassScope: false
		class: referenceModelSubRootLevelOneName.
	method := self model entityNamed: methodUniqueName.
	self assert: method isNil not.
	self assert: method belongsTo equals: (self model entityNamed: referenceModelSubRootLevelOneName).
	self assert: method hasClassScope not.
	self assert: method signature equals: (FAMIXNameResolver signatureFromSmalltalkSelectorOn: #accessSuperclassInstVar).
	self assert: method isPublic