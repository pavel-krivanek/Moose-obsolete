tests
testMooseName
	"self debug: #testMooseName"

	self assert: LANNode mooseName equals: #Smalltalk::LANNode.
	self assert: Smalltalk mooseName equals: #Smalltalk.
	self assert: 'Smalltalk::LANNode' mooseName equals: #Smalltalk::LANNode.
	self assert: LANNode class mooseName equals: #Smalltalk::LANNode_class	"we could also  test here that all the famix entities  understand mooseName but for that we should create model so
	this is done in LANTest "