testing
hasNamespaces
	"returns true if the receiver declared or inherited namespace declarations"

	"optimized to avoid lazy initialization"
	namespaceScope == nil
		ifTrue: [^ false].
	^ namespaceScope hasNamespaces.