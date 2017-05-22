allIncomingInvocations
testAllIncomingInvocationsIntoMyNamespace
	self assert: self c14ReferencerOutSideRefereeOutSide queryAllIncomingInvocations withinMyNamespace isEmpty.
	self assert: self c13FullRefereeInSideOutSide queryAllIncomingInvocations withinMyNamespace size equals: 4.	"querying dependencies does not exclude self loop, hence C13 is on both sides"
	self
		assert:
			((self c13FullRefereeInSideOutSide queryAllIncomingInvocations withinMyNamespace atScope: FAMIXType) asSet equalsTo: (Set with: self c13FullRefereeInSideOutSide with: self c12FullReferencerInSide))