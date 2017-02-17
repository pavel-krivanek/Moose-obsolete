*Famix-Implementation
directSuperclasses
	"returns a collection with all superclasses of this class"

	^ self superInheritances collect: [:each | each superclass]