staticDependencies
testStaticProviderNamespaces
	self
		assert:
			(self c11FullRefereeOutSide queryStaticOutgoingAssociations
				atScope: FAMIXNamespace) size
		equals: 1