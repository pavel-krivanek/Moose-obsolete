allOutgoingInvocations
testReferencedClasses
	self assert: self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atTypeScope size equals: 3.
	self
		assert:
			(self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atTypeScope
				equalsTo:
					(Set new
						add: self c3ReferencerInSideRefereeOutSide;
						add: self c5ReferencerInSideRefereeInSide;
						add: self c11FullRefereeOutSide;
						yourself))