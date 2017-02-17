moosequery-TScopingEntityQueries
queryOutgoingInheritances
	
	^ self createOutgoingQueryResultWith: (self classes flatCollect: [ :c | c superInheritances ])