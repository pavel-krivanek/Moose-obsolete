MooseKGB-TestFamix3-integralTests
testEachSureOutgoingReferenceImpliesASureIncomingReference
	| modelNamespaces |
	modelNamespaces := self model allNamespaces.
	self
		assert:
			(modelNamespaces
				allSatisfy: [ :referencer | 
					(referencer querySureOutgoingInvocations atScope: FAMIXType)
						allSatisfy: [ :referenced | 
							(referenced queryAllIncomingInvocations atScope: FAMIXNamespace)
								includes: referencer ] ]).
	self
		assert:
			(modelNamespaces
				allSatisfy: [ :referencer | 
					(referencer querySureOutgoingInvocations atScope: FAMIXNamespace)
						allSatisfy: [ :referenced | 
							(referenced queryAllIncomingInvocations atScope: FAMIXNamespace)
								includes: referencer ] ])