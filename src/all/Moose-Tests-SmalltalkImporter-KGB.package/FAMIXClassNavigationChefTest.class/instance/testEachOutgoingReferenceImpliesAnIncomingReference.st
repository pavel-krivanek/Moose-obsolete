MooseKGB-TestFamix3-integralTests
testEachOutgoingReferenceImpliesAnIncomingReference
	| modelClasses |
	modelClasses := self model allClasses.
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | (referencer queryAllOutgoingInvocations atScope: FAMIXType) allSatisfy: [ :referenced | (referenced queryAllIncomingInvocations atScope: FAMIXType) includes: referencer ] ]).
	self
		assert:
			(modelClasses
				allSatisfy:
					[ :referencer | (referencer queryAllOutgoingInvocations atScope: FAMIXPackage) allSatisfy: [ :referenced | (referenced queryAllIncomingInvocations atScope: FAMIXType) includes: referencer ] ]).
	self
		assert:
			(modelClasses
				allSatisfy:
					[ :referencer | (referencer queryAllOutgoingInvocations atScope: FAMIXNamespace) allSatisfy: [ :referenced | (referenced queryAllIncomingInvocations atScope: FAMIXType) includes: referencer ] ])