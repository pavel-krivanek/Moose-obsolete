tests
testFamixNamespaceNameFromFamixFullName
	self assert: (FAMIXNameResolver famixNamespaceNameFromFamixFullName: #Smalltalk::Node) equals: #Smalltalk.
	self
		assert: (FAMIXNameResolver famixNamespaceNameFromFamixFullName: #'Smalltalk::Node.printOn:(Object)')
		equals: #Smalltalk