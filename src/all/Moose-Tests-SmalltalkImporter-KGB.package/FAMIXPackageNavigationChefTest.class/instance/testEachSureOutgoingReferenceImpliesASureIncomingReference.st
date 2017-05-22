MooseKGB-TestFamix3-integralTests
testEachSureOutgoingReferenceImpliesASureIncomingReference
	| modelPackages |
	modelPackages := self model allPackages.
	self
		assert:
			(modelPackages
				allSatisfy: [ :referencer | 
					(referencer querySureOutgoingInvocations atScope: FAMIXType)
						allSatisfy: [ :referenced | 
							(referenced querySureIncomingInvocations atScope: FAMIXPackage)
								includes: referencer ] ]).
	self
		assert:
			(modelPackages
				allSatisfy: [ :referencer | 
					(referencer querySureOutgoingInvocations atScope: FAMIXPackage)
						allSatisfy: [ :referenced | 
							(referenced querySureIncomingInvocations atScope: FAMIXPackage)
								includes: referencer ] ])