testing
testMethodTimeStamp
	| method |
	method := self model entityNamed: #'Smalltalk::LANInterface.initialize()'.
	self assert: (method propertyNamed: #timeStamp) equals: (LANInterface compiledMethodAt: #initialize) timeStamp.
	method := self model entityNamed: #'Smalltalk::LANInterface.originate()'.
	self assert: (method propertyNamed: #timeStamp) equals: (LANInterface compiledMethodAt: #originate) timeStamp.
	method := self model entityNamed: #'Smalltalk::LANInterface.nodeList()'.
	self assert: (method propertyNamed: #timeStamp) equals: (LANInterface compiledMethodAt: #nodeList) timeStamp.
	method := self model entityNamed: #'Smalltalk::LANNode.canOriginate()'.
	self assert: (method propertyNamed: #timeStamp) equals: (LANNode compiledMethodAt: #canOriginate) timeStamp.
	method := self model entityNamed: #'Smalltalk::LANNode.canOutput()'.
	self assert: (method propertyNamed: #timeStamp) equals: (LANNode compiledMethodAt: #canOutput) timeStamp.
	method := self model entityNamed: #'Smalltalk::LANNode.nextNode()'.
	self assert: (method propertyNamed: #timeStamp) equals: (LANNode compiledMethodAt: #nextNode) timeStamp.
	method := self model entityNamed: #'Smalltalk::LANFileServer.name()'.
	self assert: (method propertyNamed: #timeStamp) equals: (LANFileServer compiledMethodAt: #name) timeStamp.
	method := self model entityNamed: #'Smalltalk::LANFileServer.setServerType()'.
	self assert: (method propertyNamed: #timeStamp) equals: (LANFileServer compiledMethodAt: #setServerType) timeStamp