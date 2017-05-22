staticDependencies
testStaticClientClassesIntoMyPackage
	self
		assert:
			(self c11FullRefereeOutSide queryStaticIncomingAssociations
				atScope: FAMIXType) withinMyPackage size
		equals: 1