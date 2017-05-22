as yet unclassified
testPackageObjectTests
	self
		assert:
			((self packageP1FullReferencer queryAllIncomingInvocations
				atScope: FAMIXPackage) includes: self packageP1FullReferencer).
	self
		deny:
			((self packageP1FullReferencer queryAllIncomingInvocations
				atScope: FAMIXType) withoutSelfLoops
				includes: self packageP1FullReferencer)