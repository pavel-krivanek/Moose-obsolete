as yet unclassified
testClassObjectTests
	self
		assert:
			((self c1FullReferencerOutSide queryAllIncomingInvocations
				atScope: FAMIXType) includes: self c1FullReferencerOutSide).
	self
		deny:
			((self c1FullReferencerOutSide queryAllIncomingInvocations
				atScope: FAMIXType) withoutSelfLoops
				includes: self c1FullReferencerOutSide)