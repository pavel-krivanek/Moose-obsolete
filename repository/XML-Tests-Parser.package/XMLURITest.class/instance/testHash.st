tests
testHash
	"We can only safely test that equal objects have the same hash; testing
	that different objects have different hashes would be unreliable
	because #hash is non-cryptographic and has collisions."
	self allURIStringsDo: [:each |
		self assert: each asXMLURI hash = each asXMLURI hash]