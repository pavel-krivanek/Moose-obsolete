moosequery-queries-generic
queryOutgoing: aFAMIXClassAssociation
	^ (MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) query: aFAMIXClassAssociation for: self