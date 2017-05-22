MooseKGB-TestFamix3-integralTests
testEachSureOutgoingReferenceImpliesASureIncomingReference
	| modelClasses |
	modelClasses := self model allClasses.
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | (referencer querySureOutgoingInvocations atScope: FAMIXType) allSatisfy: [ :referenced | (referenced querySureIncomingInvocations atScope: FAMIXType) includes: referencer ] ]).
	self
		assert:
			(modelClasses
				allSatisfy: [ :referencer | (referencer querySureOutgoingInvocations atScope: FAMIXPackage) allSatisfy: [ :referenced | (referenced querySureIncomingInvocations atScope: FAMIXType) includes: referencer ] ]).
	self
		assert:
			(modelClasses
				allSatisfy:
					[ :referencer | (referencer querySureOutgoingInvocations atScope: FAMIXNamespace) allSatisfy: [ :referenced | (referenced querySureIncomingInvocations atScope: FAMIXType) includes: referencer ] ])