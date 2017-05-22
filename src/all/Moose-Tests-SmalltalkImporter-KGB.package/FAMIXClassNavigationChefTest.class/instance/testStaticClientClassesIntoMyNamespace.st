staticDependencies
testStaticClientClassesIntoMyNamespace
	self
		assert:
			(self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FAMIXType) withinMyNamespace size
		equals: 1