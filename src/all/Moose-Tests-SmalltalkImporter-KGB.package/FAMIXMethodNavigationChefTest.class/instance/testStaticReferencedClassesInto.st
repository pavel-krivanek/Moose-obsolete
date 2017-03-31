references
testStaticReferencedClassesInto
	| c15m3 p11 |
	c15m3 := self getMethod: 'm4p8c15Mtd3()' from: self c15FullReferencerOutSide.
	p11 := self packageP11FullReferee.
	self assert: (c15m3 queryOutgoingReferences opposites withinPackage: p11) size equals: 1.
	self
		assert:
			((c15m3 queryOutgoingReferences opposites withinPackage: p11) equalsTo: (Set with: self c19FullRefereeOutSide)).
	self assert: 1 equals: (c15m3 queryOutgoingReferences opposites withinNamespace: self namespace6InteractedReferee) size.
	self
		assert:
			((c15m3 queryOutgoingReferences opposites withinNamespace: self namespace6InteractedReferee)
				equalsTo: (Set with: self c19FullRefereeOutSide))