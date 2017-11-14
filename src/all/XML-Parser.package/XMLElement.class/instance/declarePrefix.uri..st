namespacing
declarePrefix: aPrefix uri: aURI
	| oldMapping |

	self ensureUsesNamespaces.
	oldMapping :=
		self namespaceScope
			prefixMappingAt: aPrefix
			ifAbsent: [nil].
	(oldMapping notNil
		and: [oldMapping = aURI])
		ifFalse: [
			self
				allNamespaceScopesDo: [:scope |
					scope
						mapPrefix: aPrefix
						to: aURI]
				whileTrue: [:scope |
					(scope includesPrefix: aPrefix) not
						or: [
							scope
								includesPrefix: aPrefix
								mappedTo: oldMapping]]].