instance creation
newFileWriteStreamOnPath
	"memory file references need special handling"
	self usesMemoryStore
		ifTrue: [^ self fileReference writeStream].
	^ super newFileWriteStreamOnPath.