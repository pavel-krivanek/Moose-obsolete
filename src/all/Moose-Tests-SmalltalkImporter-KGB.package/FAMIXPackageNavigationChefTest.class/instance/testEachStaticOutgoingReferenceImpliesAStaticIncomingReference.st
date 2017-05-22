MooseKGB-TestFamix3-integralTests
testEachStaticOutgoingReferenceImpliesAStaticIncomingReference
	| modelPackages |
	modelPackages := self model allPackages.
	self
		assert:
			(modelPackages
				allSatisfy: [ :referencer | 
					(referencer queryOutgoingReferences atScope: FAMIXType)
						allSatisfy: [ :referenced | 
							(referenced queryIncomingReferences atScope: FAMIXPackage)
								includes: referencer ] ]).
	self
		assert:
			(modelPackages
				allSatisfy: [ :referencer | 
					(referencer queryOutgoingReferences atScope: FAMIXPackage)
						allSatisfy: [ :referenced | 
							(referenced queryIncomingReferences atScope: FAMIXPackage)
								includes: referencer ] ])