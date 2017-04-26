moosequery-queries-generic
queryLocalOutgoing: aFAMIXClassAssociation
	^ (MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) queryLocal: aFAMIXClassAssociation for: self