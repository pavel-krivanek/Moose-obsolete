querying
queryLocalOutgoing: aFAMIXClassAssociation
	^ MooseOutgoingQueryResult on: self withAll: (self entities flatCollect: [ :m | m queryLocalOutgoing: aFAMIXClassAssociation ])