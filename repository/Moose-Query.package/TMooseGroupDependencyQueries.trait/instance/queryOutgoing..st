querying
queryOutgoing: aFAMIXClassAssociation
	^ MooseOutgoingQueryResult on: self withAll: (self entities flatCollect: [ :m | m queryOutgoing: aFAMIXClassAssociation ])