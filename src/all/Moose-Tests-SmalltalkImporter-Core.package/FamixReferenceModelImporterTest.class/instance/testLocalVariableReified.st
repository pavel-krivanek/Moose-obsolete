reference model reification
testLocalVariableReified
	"self run: #testLocalVariableReified"

	"self debug: #testLocalVariableReified"

	| methodName localVariableName localVariable |
	methodName := FAMIXNameResolver 
				uniqueNameForMethodWithSmalltalkSelector: 'assigningLocalVariable'
				hasClassScope: false
				class: referenceModelTheRootName.
	localVariableName := 'tmp'.
	localVariableName := FAMIXNameResolver 
				uniqueNameForLocalVariableNamed: localVariableName
				belongsTo: methodName.
	localVariable := self model entityNamed: localVariableName.
	self assert: localVariable isNil not