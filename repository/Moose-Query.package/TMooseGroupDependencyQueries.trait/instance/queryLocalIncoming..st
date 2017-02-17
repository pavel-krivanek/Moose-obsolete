querying
queryLocalIncoming: aFAMIXClassAssociation
	^ MooseIncomingQueryResult on: self withAll: (self entities flatCollect: [ :m | m queryLocalIncoming: aFAMIXClassAssociation ])