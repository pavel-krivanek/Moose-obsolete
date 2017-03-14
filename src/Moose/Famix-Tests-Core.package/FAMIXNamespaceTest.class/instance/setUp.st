setUp
setUp
	root := FAMIXNamespace new name: 'a'.
	child1 := FAMIXNamespace new name: 'b'.
	child2 := FAMIXNamespace new name: 'd'.
	child11 := FAMIXNamespace new name: 'c'.
	root addChildScope: child1.
	root addChildScope: child2.
	child1 addChildScope: child11.