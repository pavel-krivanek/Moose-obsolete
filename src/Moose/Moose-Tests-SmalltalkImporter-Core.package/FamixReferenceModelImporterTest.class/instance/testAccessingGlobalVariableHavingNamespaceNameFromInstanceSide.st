reference model access
testAccessingGlobalVariableHavingNamespaceNameFromInstanceSide
	"self debug: #testAccessingGlobalVariableFromInstanceSide"

	| definingClassName accessDefinition methodUniqueName methodName |
	definingClassName := TheRoot mooseName.
	methodName := #accessingGlobalVariableHavingNamespaceName.
	methodUniqueName := (TheRoot >> methodName) mooseName.
	accessDefinition := (self model entityNamed: methodUniqueName) accesses
		select: [ :acc | acc to mooseName = #SmalltalkGlobalVariable ].
	self assert: accessDefinition size equals: 1