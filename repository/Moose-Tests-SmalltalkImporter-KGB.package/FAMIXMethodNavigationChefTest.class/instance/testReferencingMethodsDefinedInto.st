allIncomingInvocations
testReferencingMethodsDefinedInto
	| c19m2 c19m1 |
	c19m1 := self 
		getMethod: 'm6p11c19Mtd1()'
		from: self c19FullRefereeOutSide.
	c19m2 := self 
		getMethod: 'm6p11c19Mtd2()'
		from: self c19FullRefereeOutSide.
	
	self assert: 1
		equals: (c19m1 queryAllIncomingInvocations opposites withinClass: c19m1 belongsTo) size.
	self assert: ((c19m1 queryAllIncomingInvocations opposites withinClass: c19m1 belongsTo)
					equalsTo: (Set with: c19m2))
		description: 'Unexpected query result'