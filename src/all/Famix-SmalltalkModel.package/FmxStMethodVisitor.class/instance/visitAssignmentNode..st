visitor-double dispatching
visitAssignmentNode: anAssignmentNode 
	 
	| access | 
	importer importingContext shouldImportAccess 
		ifTrue: 
			[access := FmxStAccess new. 
			access isWrite: true.
			access variable: (self resolve: anAssignmentNode variable name). 
			access accessor: self methodEntity.
			importer addEntity: access]. 
	self extractCommentsFromNode: anAssignmentNode. 
	self visitNode: anAssignmentNode value