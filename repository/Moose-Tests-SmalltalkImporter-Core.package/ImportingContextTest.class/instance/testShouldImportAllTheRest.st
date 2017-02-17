tests
testShouldImportAllTheRest
	| context |

	context :=MooseImportingContext new.
	context importClassMethodInheritance.
	self deny: (context shouldImportMethodBody).
	self assert: (context shouldImportClass).
	self assert: (context shouldImport: context importingMethod).
	self assert: (context shouldImport: context importingInheritance).