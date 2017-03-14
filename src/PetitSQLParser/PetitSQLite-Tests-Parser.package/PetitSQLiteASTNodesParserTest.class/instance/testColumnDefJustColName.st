tests
testColumnDefJustColName
	super testColumnDefJustColName.
	
	self assert: (result isMemberOf: SQLColumnDefNode).  	
	self assert: result name equals: 'colName'.
	self assert: result type equals: nil.
	self assert: (result constraints isCollection).
	self assert: result constraints size equals: 0.