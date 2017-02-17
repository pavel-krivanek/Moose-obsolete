querying
queryAllOutgoing
	^ MooseOutgoingQueryResult on: self withAll: (self entities flatCollect: [ :m | m queryAllOutgoing ])