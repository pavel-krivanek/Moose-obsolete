tests
testHasNamespaces
	| scope |

	scope := self newNamespaceScope.
	self deny: scope hasNamespaces.

	scope mapPrefixesAndURIs: self namespaces.
	self assert: scope hasNamespaces.
	self namespaces keysDo: [:each |
		self assert: scope hasNamespaces.
		scope unmapPrefix: each].
	self deny: scope hasNamespaces.