within
testWithin
	| set |
	self
		assert:
			(self c1FullReferencerOutSide queryAllOutgoingAssociations
				within: self packageP2InteractedReferencerReferee) size
		equals: 1.
	self
		assert:
			(((self c1FullReferencerOutSide queryAllOutgoingAssociations
				within: self packageP2InteractedReferencerReferee)
				atScope: FAMIXType)
				includes: self c3ReferencerInSideRefereeOutSide).
	self
		assert:
			(self c1FullReferencerOutSide queryAllOutgoingInvocations
				within: self c13FullRefereeInSideOutSide) opposites size
		equals: 3.
	set := Set new
		add:
			(self
				getMethod: 'm2p6c13Mtd2()'
				from: self c13FullRefereeInSideOutSide);
		add:
			(self
				getMethod: 'm2p6c13Mtd1:(Object)'
				from: self c13FullRefereeInSideOutSide);
		add:
			(self
				getMethod: 'm2p6c13InstCreation()'
				from: self c13FullRefereeInSideOutSide);
		yourself.
	self
		assert:
			((self c1FullReferencerOutSide queryAllOutgoingInvocations
				within: self c13FullRefereeInSideOutSide) opposites equalsTo: set)