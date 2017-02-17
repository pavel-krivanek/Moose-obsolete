instance creation
newNamespaceScopeWithNamespaces
	| scope |

	scope := self newNamespaceScope.
	self namespaces keysAndValuesDo: [:prefix :uri |
		scope
			mapPrefix: prefix
			to: uri].
	^ scope.