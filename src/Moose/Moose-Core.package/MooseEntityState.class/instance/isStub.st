accessing-common attributes
isStub 
	 
	^self 
		attributeAt: #privateIsStub 
		ifAbsent: [false]