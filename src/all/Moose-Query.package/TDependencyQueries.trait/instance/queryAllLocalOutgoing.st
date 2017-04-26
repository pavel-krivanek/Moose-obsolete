moosequery-queries-generic
queryAllLocalOutgoing
	^ (MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) queryAllLocalFor: self