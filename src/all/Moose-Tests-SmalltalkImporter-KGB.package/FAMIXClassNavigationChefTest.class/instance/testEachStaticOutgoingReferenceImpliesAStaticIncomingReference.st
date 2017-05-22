MooseKGB-TestFamix3-integralTests
testEachStaticOutgoingReferenceImpliesAStaticIncomingReference
	| modelClasses |
	modelClasses := self model allClasses.
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | (referencer queryOutgoingReferences atScope: FAMIXType) allSatisfy: [ :referenced | (referenced queryIncomingReferences atScope: FAMIXType) includes: referencer ] ]).
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | (referencer queryOutgoingReferences atScope: FAMIXPackage) allSatisfy: [ :referenced | (referenced queryIncomingReferences atScope: FAMIXType) includes: referencer ] ])