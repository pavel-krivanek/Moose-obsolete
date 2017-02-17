reference model reification
testImplicitVariableReified
	"self run: #testImplicitVariableReified"

	"self debug: #testImplicitVariableReified"

	| implicitVariableName implicitVariable |
	implicitVariableName := 'self'.
	implicitVariableName := FAMIXNameResolver 
				uniqueNameForImplicitVariableNamed: implicitVariableName
				scope: referenceModelTheRootName,'.singleSelfSend()' .
	implicitVariable := self model entityNamed: implicitVariableName.
	self assert: implicitVariable isNil not