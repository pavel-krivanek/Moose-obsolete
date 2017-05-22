sureOutgoingInvocations
testSureReferencedClassesInto
	| p5 |
	p5 := self packageP5FullReferee.
	self
		assert:
			((self c14ReferencerOutSideRefereeOutSide querySureOutgoingInvocations
				atScope: FAMIXType) withinPackage: p5) size
		equals: 1.
	self
		assert:
			(((self c14ReferencerOutSideRefereeOutSide
				querySureOutgoingInvocations atScope: FAMIXType) withinPackage: p5)
				equalsTo:
					(Set new
						add: self c11FullRefereeOutSide;
						yourself))