tests
testCompilationUnitIncludes
	| cu header |
	cu := model entities detect: [ :e | e class == FAMIXCompilationUnit ].
	header := model entities detect: [ :e | e class == FAMIXHeader ].
	self assert: cu notNil.
	self assert: cu name equals: 'example.cpp'.
	self assert: cu numberOfIncludes equals: 1.
	self assert: cu outgoingIncludeRelations size equals: 1.
	self assert: cu outgoingIncludeRelations anyOne notNil.
	self assert: cu outgoingIncludeRelations anyOne class equals: FAMIXInclude.
	self assert: cu outgoingIncludeRelations anyOne from equals: cu.
	self assert: cu outgoingIncludeRelations anyOne to equals: header.