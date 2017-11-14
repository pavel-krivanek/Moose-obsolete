namespacing
defaultNamespace: aURI
	"unlike non-default namespaces, the uri can be empty to shadow an
	inherited default namesapce"
	| oldNamespace |

	self ensureUsesNamespaces.
	oldNamespace := self defaultNamespace.
	self
		allNamespaceScopesDo: [:scope |
			scope defaultNamespace: aURI]
		whileTrue: [:scope |
			scope defaultNamespace = oldNamespace].