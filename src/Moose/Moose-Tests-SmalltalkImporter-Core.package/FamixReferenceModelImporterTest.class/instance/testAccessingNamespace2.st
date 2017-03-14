reference model access
testAccessingNamespace2
	"self debug: #testAccessingNamespace2"

	| definingClassName accessDefinition methodUniqueName methodName |
	definingClassName := 'Smalltalk::TheRoot' mooseName.
	methodName := #accessingGlobalVariableHavingNamespaceName.
	methodUniqueName := FAMIXNameResolver
		uniqueNameForMethodWithSmalltalkSelector: methodName
		hasClassScope: false
		class: definingClassName.
	accessDefinition := (self model entityNamed: methodUniqueName) accesses
		select: [ :acc | acc to mooseName = #SmalltalkGlobalVariable ].
	self assert: accessDefinition size equals: 1