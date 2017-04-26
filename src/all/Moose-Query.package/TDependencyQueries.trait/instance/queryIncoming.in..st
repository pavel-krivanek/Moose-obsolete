moosequery-queries-generic
queryIncoming: aFAMIXClassAssociation in: aCollection
	^ (MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) query: aFAMIXClassAssociation for: self in: aCollection