tests
testCanonicallyEquals
	super testCanonicallyEquals.
	self assert:
		((self nodeClass name: 'one' value: 'two') canonicallyEquals:
			(self nodeClass name: 'one' value: 'two')).
	self deny:
		((self nodeClass name: 'one' value: 'two') canonicallyEquals:
			self newNode).