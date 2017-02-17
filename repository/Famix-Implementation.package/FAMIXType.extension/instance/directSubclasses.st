*Famix-Implementation
directSubclasses
	"returns a collection with all subclasses of this class"

	^ self subInheritances collect: [:each | each subclass]