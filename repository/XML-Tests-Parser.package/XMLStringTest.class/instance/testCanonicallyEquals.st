tests
testCanonicallyEquals
	super testCanonicallyEquals.
	self assert:
		((self nodeClass string: 'test') canonicallyEquals:
			(self nodeClass string: 'test')).
	self deny:
		((self nodeClass string: 'test') canonicallyEquals:
			self newNode).