moosequery-queries-generic
queryAllLocalIncoming
	^ (MooseQueryCalculator strategy: MooseQueryIncomingDirectionStrategy) queryAllLocalFor: self