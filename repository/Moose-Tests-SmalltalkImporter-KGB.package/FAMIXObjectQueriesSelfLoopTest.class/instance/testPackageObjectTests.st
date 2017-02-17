as yet unclassified
testPackageObjectTests

	self assert: (
		(self packageP1FullReferencer queryAllIncomingInvocations atPackageScope)
		includes: self packageP1FullReferencer
	).
	self deny: (
		(self packageP1FullReferencer queryAllIncomingInvocations atTypeScope withoutSelfLoops )
		includes: self packageP1FullReferencer
	)