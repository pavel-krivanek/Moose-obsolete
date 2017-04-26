moosequery-queries-generic
queryAllIncoming
	^ (MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) queryAllFor: self