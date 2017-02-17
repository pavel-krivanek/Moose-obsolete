tests
testShouldImportClassesForMethod
	| context |

	context := MooseImportingContext new.
	context importClassMethodInheritance.
	self assert: (context shouldImport: context importingClass).
	self assert: (context shouldImportClass).
	self assert: (context shouldImport: context importingMethod).
	self assert: (context shouldImport: context importingInheritance).