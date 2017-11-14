testing
usesMemoryStore
	"Pharo 3.0 has memory stores but lacks #isMemoryFileSystem, so
	this test is used instead for backwards compatibility"
	^ self fileReference fileSystem store class ==
		(XMLClassFinder classNamed: #MemoryStore)