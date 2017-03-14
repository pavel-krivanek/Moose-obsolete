as yet unclassified
testIsSurelyInvokedBy
	 
	| method m1 m2 | 
	method := self model allMethods entityNamed: #'Model5InteractedReferencer::M5P10C17FullReferencerInSide.m5p10c17Mtd1()'.
	m1 := self getMethod: 'm5p10c18InstCreation()' from: self c18FullRefereeInSideOutSide.
	m2 := self getMethod: 'm5p10c18Mtd1()' from: self c18FullRefereeInSideOutSide.
	
	self assert: (m1 isSurelyInvokedBy: method).
	self deny: (m2 isSurelyInvokedBy: method)
