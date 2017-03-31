tests
testHasDefaultNamespace
	| scope |

	scope := self newNamespaceScope.
	self deny: scope hasDefaultNamespace.

	scope defaultNamespace: 'test'.
	self assert: scope hasDefaultNamespace.

	scope defaultNamespace: ''.
	self assert: scope hasDefaultNamespace.

	scope unmapPrefix: ''.
	self deny: scope hasDefaultNamespace.