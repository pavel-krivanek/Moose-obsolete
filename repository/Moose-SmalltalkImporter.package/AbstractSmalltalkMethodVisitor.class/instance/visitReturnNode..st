visitor-double dispatching
visitReturnNode: aReturnNode 
	 
	self visitNode: aReturnNode value. 
	self extractCommentsFromNode: aReturnNode