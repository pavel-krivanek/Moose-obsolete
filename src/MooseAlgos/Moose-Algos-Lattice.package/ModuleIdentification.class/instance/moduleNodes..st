accessing
moduleNodes: aColectionOfNodes
	
	(moduleNodes includesAllOf: aColectionOfNodes) ifFalse: [ moduleNodes add: aColectionOfNodes copy].