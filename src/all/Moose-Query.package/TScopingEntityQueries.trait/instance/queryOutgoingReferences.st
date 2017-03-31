moosequery-TScopingEntityQueries
queryOutgoingReferences
	
	^ self createOutgoingQueryResultWith: (self methods flatCollect: [ :m | m outgoingReferences ])