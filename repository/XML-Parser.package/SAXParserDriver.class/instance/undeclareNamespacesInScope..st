private
undeclareNamespacesInScope: anExitedScope
	| currentScope |

	currentScope := self scopeAllocator currentScope.
	anExitedScope prefixesAndURIsDo: [:prefix :uri |
		(currentScope resolvePrefix: prefix) = uri
			ifFalse: [self saxHandler endPrefixMapping: prefix]].