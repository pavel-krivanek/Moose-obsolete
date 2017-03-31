as yet unclassified
testIsASureInvocation
	 
	| invoc1 invoc2 method | 
	method := self getMethod: 'm5p10c17Mtd1()' from: self c17FullReferencerInSide.
	invoc1 := method outgoingInvocations detect: [:each |
		each signature = 'm5p10c18InstCreation()' ].
	self assert: invoc1 isASureInvocation. 
	
	invoc2 := method outgoingInvocations detect: [:each |
		each signature = 'm5p10c18Mtd1()' ].
	self assert: (invoc2 isASureInvocation) not. 