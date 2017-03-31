stubs
testStubSharedVariableReified
	"self debug: #testStubSharedVariableReified"

	| definingClassName classVarName classVarUniqueName classVar |
	definingClassName := Object mooseName.
	classVarName := #DependentsFields.
	classVarUniqueName := FAMIXNameResolver
		mooseNameForAttributeNamed: classVarName
		class: definingClassName
		classSide: false.
	classVar := self model entityNamed: classVarUniqueName.
	self deny: classVar isNil.
	self assert: classVar isStub.
	self assert: classVar isSharedVariable.
	self assert: classVar belongsTo equals: (self model entityNamed: definingClassName)	