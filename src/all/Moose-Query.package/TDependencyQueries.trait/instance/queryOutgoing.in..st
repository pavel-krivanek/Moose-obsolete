moosequery-queries-generic
queryOutgoing: aFAMIXClassAssociation in: aCollection
	^ (MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) query: aFAMIXClassAssociation for: self in: aCollection