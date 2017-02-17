shared variables
testaccessSharedVariableFromTheClassSide
	"self debug: #testaccessSharedVariableFromTheClassSide"

	| attributeName definingClassName classVarUniqueName accessDefinition methodUniqueName methodName methodClassName |
	attributeName := #TheRootSharedVariable.
	definingClassName := TheRoot mooseName.
	methodClassName := TheRoot class mooseName.
	methodName := #accessSharedVariableFromTheClassSide.
	methodUniqueName := (TheRoot class >> #accessSharedVariableFromTheClassSide) mooseName.
	classVarUniqueName := TheRoot @ #TheRootSharedVariable.
	accessDefinition := self model allAccesses
		select: [ :acc | acc variable mooseName = classVarUniqueName and: [ acc accessor mooseName = methodUniqueName ] ].
	self assert: accessDefinition size equals: 1.
	self assert: (accessDefinition at: 1) isWrite