sureOutgoingInvocations
testSureReferencedClasses 
	 
	| p8 | 
	p8 := self packageP8FullReferencer. 
	self 
		assert: 
			(p8 querySureOutgoingInvocations atTypeScope 
				equalsTo: 
					(Set 
						with: self c18FullRefereeInSideOutSide 
						with: self c19FullRefereeOutSide))