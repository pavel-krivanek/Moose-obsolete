querying
queryIncoming: aFAMIXClassAssociation
	^ MooseIncomingQueryResult on: self withAll: (self entities flatCollect: [ :m | m queryIncoming: aFAMIXClassAssociation ])