tests
testCompilationUnitIncludes
	| cu |
	cu := model entities detect: [ :e | e class == FAMIXCompilationUnit ].
	self assert: cu notNil.
	self assert: cu name equals: 'foobar.cpp'.
	self assert: cu numberOfIncludes equals: 2