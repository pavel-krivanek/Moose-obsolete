MooseKGB-TestFamix3-integralTests
testEachOutgoingReferenceImpliesAnIncomingReference
	| modelPackages |
	modelPackages := self model allPackages.
	self
		assert:
			(modelPackages
				allSatisfy: [ :referencer | 
					(referencer queryAllOutgoingInvocations atScope: FAMIXType)
						allSatisfy: [ :referenced | 
							(referenced queryAllIncomingInvocations atScope: FAMIXPackage)
								includes: referencer ] ]).
	self
		assert:
			(modelPackages
				allSatisfy: [ :referencer | 
					(referencer queryAllOutgoingInvocations atScope: FAMIXPackage)
						allSatisfy: [ :referenced | 
							(referenced queryAllIncomingInvocations atScope: FAMIXPackage)
								includes: referencer ] ])