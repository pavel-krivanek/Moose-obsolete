shared variables
testaccessSharedVariableFromTheInstanceSide
	"self debug: #testaccessSharedVariableFromTheInstanceSide"

	| attributeName definingClassName classNameWhereAccess classVarUniqueName accessDefinition methodName |
	"TheRoot>>accessSharedVariableFromTheInstanceSide
		TheRootSharedVariable := 3"
	attributeName := 'TheRootSharedVariable'.
	definingClassName := TheRoot mooseName.
	classNameWhereAccess := TheRoot mooseName.
	methodName := (TheRoot >> #accessSharedVariableFromTheInstanceSide) mooseName.
	classVarUniqueName := FAMIXNameResolver mooseNameForSharedAttributeNamed: attributeName class: definingClassName.
	accessDefinition := self model allAccesses
		select: [ :acc | acc variable mooseName = classVarUniqueName and: [ acc accessor mooseName = methodName ] ].
	self assert: accessDefinition size equals: 1.
	self assert: (accessDefinition at: 1) isWrite