tests
testAllDependentsOf
	| res1 res2 |
	MooseImportingContext initialize.
	res1 := MooseImportingContext allDependentsOf: MooseImportingContext importingClass.
	self assert: res1 size equals: 2.
	self assert: (res1 includes: MooseImportingContext importingClass).
	res2 := MooseImportingContext allDependentsOf: MooseImportingContext importingImplicitVariable.
	self assert: res2 size equals: 4.
	self assert: (res2 includes: MooseImportingContext importingClass).
	self assert: (res2 includes: MooseImportingContext importingMethod).
	self assert: (res2 includes: MooseImportingContext importingImplicitVariable)