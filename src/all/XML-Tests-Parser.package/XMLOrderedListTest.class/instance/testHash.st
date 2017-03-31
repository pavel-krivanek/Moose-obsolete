tests
testHash
	"We can only safely test that equal objects have the same hash; testing
	that different objects have different hashes would be unreliable
	because #hash is non-cryptographic and has collisions."
	self
		assert: self emptyList hash = self emptyList hash;
		assert: self listWithSingleItem hash = self listWithSingleItem hash;
		assert: self listWithItems hash = self listWithItems hash;
		assert:
			(self listWithItems
				removeAll;
				hash) = self emptyList hash.