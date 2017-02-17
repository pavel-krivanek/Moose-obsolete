sureOutgoingInvocations
testSureReferencedPackages 
	self assert: 2
		equals: self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations atPackageScope size. 
	self assert: 
			(self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations atPackageScope 
		equalsTo: (Set
					with: self packageP6InteractedReferee
					with: self packageP5FullReferee ))