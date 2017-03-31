querying
queryAllIncoming
	^ MooseIncomingQueryResult on: self withAll: (self entities flatCollect: [ :m | m queryAllIncoming ])