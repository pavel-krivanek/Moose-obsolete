accessing-derived
returnAliases
	"Aliases of object returned to this activation, not to be confused with the alias returned from this activation (#return)"

	^ self aliases select: [ :each | each isReturnAlias]