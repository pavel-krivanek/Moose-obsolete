tests
testSortStringHierarchy
	sorter
		addNodesFrom: String
		childrenBlock: [ :class | class subclasses ].

	self
		assertCollection: (sorter run collect: [ :item | item model ] as: Array)
		equals: { WideSymbol . ByteSymbol . Symbol . WideString . ByteString . String }