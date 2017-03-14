tests
testModuleHasCompilationUnit
	| module cu |
	module := model entities detect: [ :e | e class == FAMIXModule ].
	cu := module compilationUnit.
	self assert: cu notNil.
	self assert: cu name equals: 'foobar.cpp'