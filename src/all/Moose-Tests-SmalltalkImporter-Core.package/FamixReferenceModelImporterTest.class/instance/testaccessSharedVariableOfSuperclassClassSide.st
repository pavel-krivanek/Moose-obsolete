shared variables
testaccessSharedVariableOfSuperclassClassSide
	"self debug: #testaccessSharedVariableOfSuperclassClassSide"

	| attributeName definingClassName classNameWhereAccess instVarUniqueName accessDefinition methodUniqueName methodName |
	attributeName := #TheRootSharedVariable.
	definingClassName := TheRoot mooseName.
	classNameWhereAccess := SubRootLevelOne class mooseName.
	methodName := #accessSharedVariableOfSuperClassClassSide.
	methodUniqueName := (SubRootLevelOne class >> methodName) mooseName.
	instVarUniqueName := TheRoot @ #TheRootSharedVariable.
	accessDefinition := self model allAccesses
		select: [ :acc | acc variable mooseName = instVarUniqueName and: [ acc accessor mooseName = methodUniqueName ] ].
	self assert: accessDefinition size equals: 1.
	self assert: (accessDefinition at: 1) isWrite