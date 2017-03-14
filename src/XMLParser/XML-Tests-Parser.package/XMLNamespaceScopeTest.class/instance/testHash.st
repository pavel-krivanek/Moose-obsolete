tests
testHash
	"We can only safely test that equal objects have the same hash; testing
	that different objects have different hashes would be unreliable
	because #hash is non-cryptographic and has collisions."
	self assert:
		self newNamespaceScope hash =
			self newNamespaceScope hash.
	self assert:
		self newNamespaceScopeWithNamespaces hash =
			self newNamespaceScopeWithNamespaces hash.
	self assert:
		self newNamespaceScope hash =
			(self newNamespaceScopeWithNamespaces
				unmapPrefixes;
				hash).