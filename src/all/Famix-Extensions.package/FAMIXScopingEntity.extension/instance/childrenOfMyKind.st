*Famix-Extensions
childrenOfMyKind
	"Polymorphic accessor to children of this scope in a hierarchical structure (package->subpackages, scope->subscopes)"

	^ self children allWithSubTypesOf: self class