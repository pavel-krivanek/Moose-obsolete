MooseKGB-TestFamix3-integralTests
testSureReferencedNamespacesTest
	| modelClasses |
	modelClasses := self model allClasses.
	modelClasses
		do: [ :each | 
			self
				assert: (each querySureOutgoingInvocations atScope: FAMIXNamespace) size
				equals: (each querySureOutgoingInvocations atScope: FAMIXNamespace) asSet size ].
	modelClasses
		do: [ :each | 
			self
				assert: (each querySureIncomingInvocations atScope: FAMIXType) size
				equals: (each querySureIncomingInvocations atScope: FAMIXType) asSet size ].
	modelClasses
		do: [ :each | 
			self
				assert: (each querySureIncomingInvocations atScope: FAMIXNamespace) size
				equals: (each querySureIncomingInvocations atScope: FAMIXNamespace) asSet size ]