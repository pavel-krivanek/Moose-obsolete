tests
testNodeIsInModelWithGoodName
	 "self debug: #testNodeIsInModelWithGoodName"
	
	| node | 
	node := self model  entityNamed: LANNode mooseName. 
	self deny: node isNil