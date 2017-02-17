shared variables
testaccessSharedVariableOfSuperclassClassSide2
	"self debug: #testaccessSharedVariableOfSuperclassClassSide"

	| attributeName definingClassName classNameWhereAccess instVarUniqueName accessDefinition methodUniqueName methodName |
	"we test
		SubRootLevelOne class>>accessSharedVariableOfSuperSuperClassClassSide

			DependentsFields := 6"
	attributeName := #DependentsFields.
	definingClassName := TheRoot mooseName.
	classNameWhereAccess := SubRootLevelOne class mooseName.
	methodName := #accessSharedVariableOfSuperSuperClassClassSide.
	methodUniqueName := (SubRootLevelOne class >> methodName) mooseName.
	instVarUniqueName := Object @ #DependentsFields.
	accessDefinition := self model allAccesses
		select: [ :acc | acc variable mooseName = instVarUniqueName and: [ acc accessor mooseName = methodUniqueName ] ].
	self assert: accessDefinition size equals: 1.
	self assert: (accessDefinition at: 1) isWrite