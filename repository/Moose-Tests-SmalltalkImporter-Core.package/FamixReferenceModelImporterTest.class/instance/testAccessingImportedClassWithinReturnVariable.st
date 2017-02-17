reference model access
testAccessingImportedClassWithinReturnVariable
	"self debug: #testAccessingImportedClassWithinReturnVariable"

	| methodName var accesses |
	methodName := self model entityNamed: #'Smalltalk::TheRoot.returningImportedClass()'.
	var := self model entityNamed: #Smalltalk::TheRoot.
	accesses := self model allReferences select: [ :each | each from = methodName and: [ each to = var ] ].
	self assert: accesses size equals: 1