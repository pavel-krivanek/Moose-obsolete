moosequery-queries-outgoing
queryOutgoingReferences

	^ self createOutgoingQueryResultWith: (self methods flatCollect: [ :m | m outgoingReferences ])