reference model access
testAccessingStubClassWithinReturnVariable
	"self debug: #testAccessingStubClassWithinReturnVariable"

	| classNameWhereAccess accessDefinition methodUniqueName methodName classUniqueName |
	classUniqueName := String mooseName.
	classNameWhereAccess := TheRoot mooseName.
	methodName := #returningStubClass.
	methodUniqueName := (TheRoot >> methodName) mooseName.
	accessDefinition := self model allReferences
		select: [ :acc | acc to mooseName = classUniqueName and: [ acc from mooseName = methodUniqueName ] ].
	self assert: accessDefinition size equals: 1