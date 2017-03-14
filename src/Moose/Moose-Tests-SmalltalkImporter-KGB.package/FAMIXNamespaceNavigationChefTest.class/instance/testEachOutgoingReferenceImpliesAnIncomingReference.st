MooseKGB-TestFamix3-integralTests
testEachOutgoingReferenceImpliesAnIncomingReference
	| modelNamespaces |
	modelNamespaces := self model allNamespaces.
	self assert: (modelNamespaces allSatisfy: 
			[ :referencer | 
			referencer queryAllOutgoingInvocations atTypeScope allSatisfy: [ :referenced | referenced queryAllIncomingInvocations atNamespaceScope includes: referencer ] ]).
	self assert: (modelNamespaces allSatisfy: 
			[ :referencer | 
			referencer queryAllOutgoingInvocations atNamespaceScope allSatisfy: [ :referenced | referenced queryAllIncomingInvocations atNamespaceScope includes: referencer ] ])