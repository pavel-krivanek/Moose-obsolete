moosequery-queries-generic
queryLocalIncoming: aFAMIXClassAssociation
	^ (MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) queryLocal: aFAMIXClassAssociation for: self