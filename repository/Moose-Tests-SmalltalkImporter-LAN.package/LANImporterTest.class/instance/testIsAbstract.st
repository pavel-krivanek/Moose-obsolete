tests
testIsAbstract 
	 
	self 
		assert: 
			(self model entityNamed: #'Smalltalk::LANOutputServer') isAbstract. 
	self 
		assert: 
			(self model entityNamed: 
					#'Smalltalk::LANOutputServer.output:(Object)') isAbstract