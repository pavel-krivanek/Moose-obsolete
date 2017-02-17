tests
testInferNamespaces
	| model |
	model := MooseModel new.
	model add: (FAMIXNamespace new name: 'org.project.package1').
	model add: (FAMIXNamespace new name: 'org.project.package2').
	self assert: model allNamespaces size equals: 2.
	model inferNamespaceParentsBasedOnNames.
	self assert: model allNamespaces size equals: 4