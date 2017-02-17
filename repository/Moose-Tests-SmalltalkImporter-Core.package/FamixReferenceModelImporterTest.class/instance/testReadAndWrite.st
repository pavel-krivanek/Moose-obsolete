reference model accesed
testReadAndWrite
	| attributeName definingClassName instVarUniqueName accessDefinition methodUniqueName methodName |
	attributeName := 'k'.
	definingClassName := SubRootLevelOne mooseName.
	methodName := #accessTwiceTheSameVariableReadAndWrite.
	methodUniqueName := (SubRootLevelOne >> methodName) mooseName.
	instVarUniqueName := FAMIXNameResolver
		mooseNameForAttributeNamed: attributeName
		class: definingClassName
		classSide: false.
	accessDefinition := self model allAccesses
		select: [ :acc | acc variable mooseName = instVarUniqueName and: [ acc accessor mooseName = methodUniqueName ] ].
	self assert: accessDefinition size equals: 2.
	self assert: (accessDefinition at: 1) isRead | (accessDefinition at: 1) isWrite.
	self assert: (accessDefinition at: 2) isRead | (accessDefinition at: 2) isWrite