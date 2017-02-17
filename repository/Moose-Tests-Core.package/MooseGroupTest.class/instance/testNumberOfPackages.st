tests
testNumberOfPackages
	| model |
	model := MooseModel new.
	self assert: model numberOfPackages equals: 0.
	model := MooseModel new.
	model add: FAMIXPackage new.
	model add: FAMIXPackage new.
	self assert: model numberOfPackages equals: 0.
	model := MooseModel new.
	model add: FAMIXNamespace new.
	model add: FAMIXNamespace new.
	self assert: model numberOfPackages equals: 2