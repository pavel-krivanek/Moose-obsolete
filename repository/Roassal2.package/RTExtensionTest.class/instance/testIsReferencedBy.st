tests
testIsReferencedBy

	self deny: (String superclass isReferencedBy: self class).
	self assert: (String isReferencedBy: Object)