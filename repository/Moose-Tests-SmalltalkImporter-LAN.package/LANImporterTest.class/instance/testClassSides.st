tests
testClassSides 
	 
	| node nodeClass | 
	node := self model entityNamed: LANNode mooseName. 
	nodeClass := self model entityNamed: LANNode class mooseName. 
	self assert: node instanceSide == node. 
	self assert: node classSide == nodeClass. 
	self assert: nodeClass classSide == nodeClass. 
	self assert: nodeClass instanceSide == node