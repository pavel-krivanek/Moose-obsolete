tests
testCacheInvalidationAfterMultipleAddRemove
	| classA classB |
	classA := FAMIXClass new name: 'ClassA'.
	classB := FAMIXClass new name: 'ClassB'.
	model add: classA.
	self assert: model allClasses size equals: 1.
	model add: classB.
	self assert: model allClasses size equals: 2.
	model remove: classA.
	self assert: model allClasses size equals: 1.
	model add: classA.
	self assert: model allClasses size equals: 2.
	model remove: classA.
	self assert: model allClasses size equals: 1.
	model remove: classB.
	self assert: model allClasses isEmpty