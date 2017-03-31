tests
testAccessReification 
	 
	self model allAccesses 
		do: 
			[:each |  
			self assert: (each accessor isKindOf: FAMIXMethod). 
			self assert: (each variable isKindOf: FAMIXStructuralEntity) ]