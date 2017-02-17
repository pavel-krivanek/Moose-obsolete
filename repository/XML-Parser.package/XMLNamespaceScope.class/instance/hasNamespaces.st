testing
hasNamespaces
	"optimized to avoid lazy initialization"
	prefixMappings == nil
		ifTrue: [^ false].
	^ prefixMappings size > 0.