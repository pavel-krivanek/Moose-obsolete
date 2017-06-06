setUp
setUp
	root := self actualClass new name: 'a'.
	child1 := self actualClass new name: 'b'.
	child2 := self actualClass new name: 'd'.
	child11 := self actualClass new name: 'c'.
	root addChildScope: child1.
	root addChildScope: child2.
	child1 addChildScope: child11.