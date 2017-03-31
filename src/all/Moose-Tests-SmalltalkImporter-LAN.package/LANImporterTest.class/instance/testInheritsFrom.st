tests
testInheritsFrom 
	 
	self 
		assert: 
			((self model entityNamed: #'Smalltalk::LANPrintServer') 
				inheritsFrom: (self model entityNamed: LANNode mooseName)). 
	self 
		assert: 
			((self model entityNamed: #'Smalltalk::LANPrintServer') 
				inheritsFrom: 
					(self model entityNamed: #'Smalltalk::LANOutputServer')). 
	self 
		assert: 
			((self model entityNamed: #'Smalltalk::LANPrintServer') 
				inheritsFrom: (self model entityNamed: #'Smalltalk::Model'))