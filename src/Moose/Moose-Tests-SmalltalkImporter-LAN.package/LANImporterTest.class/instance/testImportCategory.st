tests
testImportCategory
	self assert: (self model entityNamed: #'Smalltalk::LANInterface.cancel()') category equals: #actions.
	self assert: (self model entityNamed: #'Smalltalk::LANInterface.addressee()') category equals: #aspects