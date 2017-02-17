tests
testIsClassAbstract 
	 "self debug: #testIsClassAbstract"
	
	| famixMethod |
	famixMethod := self model entityNamed: #'Smalltalk::LANOutputServer.output:(Object)'.
	self assert: (famixMethod isAbstract).

	self 
		assert: 
			(self model entityNamed: #'Smalltalk::LANOutputServer') isAbstract. 
	