sureOutgoingInvocations
testSureReferencedClasses
	"self debug: #testSureReferencedClasses"

	| c19Mtd2 c20Mtd1 |
	c19Mtd2 := self getMethod: 'm6p11c19Mtd2()' from: self c19FullRefereeOutSide.
	c20Mtd1 := self getMethod: 'm6p12c20Mtd1()' from: self c20FullReferencerOutSide.
	self assert: c19Mtd2 querySureOutgoingInvocations atTypeScope size equals: 1.
	self assert: c20Mtd1 querySureOutgoingInvocations atTypeScope size equals: 1.
	self assert: (c20Mtd1 querySureOutgoingInvocations atTypeScope includes: self c19FullRefereeOutSide)