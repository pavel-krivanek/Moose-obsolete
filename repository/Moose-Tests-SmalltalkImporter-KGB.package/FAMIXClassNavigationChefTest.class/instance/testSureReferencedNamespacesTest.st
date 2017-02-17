MooseKGB-TestFamix3-integralTests
testSureReferencedNamespacesTest
	| modelClasses |
	modelClasses := self model allClasses.
	modelClasses
		do: [ :each | 
			self
				assert: each querySureOutgoingInvocations atNamespaceScope size
				equals: each querySureOutgoingInvocations atNamespaceScope asSet size ].
	modelClasses
		do: [ :each | 
			self
				assert: each querySureIncomingInvocations atTypeScope size
				equals: each querySureIncomingInvocations atTypeScope asSet size ].
	modelClasses
		do: [ :each | 
			self
				assert: each querySureIncomingInvocations atNamespaceScope size
				equals: each querySureIncomingInvocations atNamespaceScope asSet size ]