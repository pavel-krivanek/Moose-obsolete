sureOutgoingInvocations
testSureReferencedClassesInto 
	 
	| p8 p11 pEx | 
	p8 := self packageP8FullReferencer. 
	p11 := self packageP11FullReferee. 
	pEx := self packagePExtensions. 
	self 
		assert: 
			((p8 querySureOutgoingInvocations atTypeScope withinPackage: p11) 
				equalsTo: (Set with: self c19FullRefereeOutSide)). 
	self assert: (p8 querySureOutgoingInvocations atTypeScope withinPackage: pEx) isEmpty