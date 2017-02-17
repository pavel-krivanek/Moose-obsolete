shared variables
testaccessSharedVariableOfSuperclassInstanceSide
	"self debug: #testaccessSharedVariableOfSuperclassInstanceSide"

	| attributeName definingClassName classNameWhereAccess instVarUniqueName accessDefinition methodUniqueName methodName |
	attributeName := #TheRootSharedVariable.
	definingClassName := TheRoot mooseName.
	classNameWhereAccess := SubRootLevelOne mooseName.
	methodName := #accessSharedVariableOfSuperclassInstanceSide.
	methodUniqueName := (SubRootLevelOne >> methodName) mooseName.
	instVarUniqueName := FAMIXNameResolver
		mooseNameForAttributeNamed: attributeName
		class: definingClassName
		classSide: false.
	accessDefinition := self model allAccesses
		select: [ :acc | acc variable mooseName = instVarUniqueName and: [ acc accessor mooseName = methodUniqueName ] ].
	self assert: accessDefinition size equals: 1.
	self assert: (accessDefinition at: 1) isWrite