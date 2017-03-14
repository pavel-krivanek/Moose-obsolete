references
testStaticReferencedClassesInto
	| p3 |
	p3 := self packageP3InteractedReferencer.
	self assert: (self c6FullReferencerInSideOutSide queryOutgoingReferences opposites withinPackage: p3) size equals: 1.
	self
		assert:
			((self c6FullReferencerInSideOutSide queryOutgoingReferences opposites withinPackage: p3)
				equalsTo:
					(Set new
						add: self c5ReferencerInSideRefereeInSide;
						yourself))