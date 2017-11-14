MooseKGB-TestFamix3-integralTests
testSureReferencingClassesIncludeAllStaticReferencingClasses
	| modelClasses |
	modelClasses := self model allClasses.
	self assert: (modelClasses allSatisfy: [ :referencer | (referencer queryAllIncoming atScope: FAMIXType) includesAll: (referencer queryStaticIncomingAssociations atScope: FAMIXType) ])