moosequery-queries-generic
queryIncoming: aFAMIXClassAssociation
	^ (MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) query: aFAMIXClassAssociation for: self