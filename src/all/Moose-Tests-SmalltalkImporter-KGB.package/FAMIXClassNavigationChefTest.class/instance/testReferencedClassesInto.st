allOutgoingInvocations
testReferencedClassesInto
	| p3 |
	p3 := self packageP3InteractedReferencer.
	self
		assert: (self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atTypeScope withinPackage: p3) size
		equals: 1.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryAllOutgoingInvocations atTypeScope withinPackage: p3)
				equalsTo: (Set with: self c5ReferencerInSideRefereeInSide))