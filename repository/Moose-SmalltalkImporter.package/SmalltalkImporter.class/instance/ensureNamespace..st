public-entity-creation
ensureNamespace: aNamespace
	^ namespaces at: aNamespace asString asSymbol ifAbsent: [ self createNamespace: aNamespace ]