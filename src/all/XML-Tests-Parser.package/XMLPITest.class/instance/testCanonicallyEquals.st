tests
testCanonicallyEquals
	super testCanonicallyEquals.
	self assert:
		(self newPIWithTargetAndData canonicallyEquals:
			self newPIWithTargetAndData).
	self deny:
		(self newPIWithTargetAndData canonicallyEquals:
			self newNode).