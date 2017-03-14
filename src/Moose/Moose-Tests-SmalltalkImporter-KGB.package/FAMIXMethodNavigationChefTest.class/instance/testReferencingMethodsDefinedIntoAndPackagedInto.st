allIncomingInvocations
testReferencingMethodsDefinedIntoAndPackagedInto
	| c19m2 c19m1 pExtensions |
	c19m1 := self 
		getMethod: 'm6p11c19Mtd1()'
		from: self c19FullRefereeOutSide.
	c19m2 := self 
		getMethod: 'm6p11c19Mtd2()'
		from: self c19FullRefereeOutSide.
	pExtensions := self packagePExtensions.
	
	self assert: 1
		equals: ((c19m1 queryAllIncomingInvocations opposites
					withinClass: c19m1 belongsTo) withinPackage: pExtensions) size.
	self assert:
			(((c19m1 queryAllIncomingInvocations opposites
				withinClass: c19m1 belongsTo) withinPackage: pExtensions)
			equalsTo: (Set with: c19m2))
		description: 'Unexpected query result'.
	self assert: ((c19m1 queryAllIncomingInvocations opposites
				withinClass: c19m1 belongsTo) withinPackage: c19m1 packageScope) isEmpty
		description: 'Non-empty query result'.