tests
testFamixNameFromFamixFullName
	self assert: (FAMIXNameResolver famixNameFromFamixFullName: #Smalltalk::LANNode) equals: #LANNode.
	self
		assert: (FAMIXNameResolver famixNameFromFamixFullName: #'Smalltalk::LANNode.printOn:(Object)')
		equals: #'LANNode.printOn:(Object)'