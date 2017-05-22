MooseKGB-TestFamix3-integralTests
testEachOutgoingReferenceImpliesAnIncomingReference
	| modelNamespaces |
	modelNamespaces := self model allNamespaces.
	self
		assert:
			(modelNamespaces
				allSatisfy: [ :referencer | 
					(referencer queryAllOutgoingInvocations atScope: FAMIXType)
						allSatisfy: [ :referenced | 
							(referenced queryAllIncomingInvocations atScope: FAMIXNamespace)
								includes: referencer ] ]).
	self
		assert:
			(modelNamespaces
				allSatisfy: [ :referencer | 
					(referencer queryAllOutgoingInvocations atScope: FAMIXNamespace)
						allSatisfy: [ :referenced | 
							(referenced queryAllIncomingInvocations atScope: FAMIXNamespace)
								includes: referencer ] ])