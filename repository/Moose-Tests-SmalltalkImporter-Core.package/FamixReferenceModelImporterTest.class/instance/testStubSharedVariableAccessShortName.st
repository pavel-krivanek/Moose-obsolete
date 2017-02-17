stubs
testStubSharedVariableAccessShortName
	"We want to test that
	TheRoot>>accessingStubSharedVariableShortName

			^ DependentsFields"

	| methodName classVarUniqueName accessDefinition |
	methodName := (TheRoot >> #accessingStubSharedVariableShortName) mooseName.
	classVarUniqueName := Object @ #DependentsFields.
	accessDefinition := self model allAccesses
		select: [ :acc | acc variable mooseName = classVarUniqueName and: [ acc accessor mooseName = methodName ] ].
	self assert: accessDefinition size equals: 1