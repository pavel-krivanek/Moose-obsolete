private
newFileReadStreamOnPath
	"memory file references need special handling"
	self usesMemoryStore
		ifTrue: [^ self fileReference readStream].
	^ super newFileReadStreamOnPath.