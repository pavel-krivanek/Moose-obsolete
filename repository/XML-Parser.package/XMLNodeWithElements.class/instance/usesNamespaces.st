testing
usesNamespaces
	"returns true if namespace checking is enabled (default)"

	"optimized to avoid lazy initializing the config"
	configuration == nil
		ifTrue: [^ true].
	^ configuration usesNamespaces.