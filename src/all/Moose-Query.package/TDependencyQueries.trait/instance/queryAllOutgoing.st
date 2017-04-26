moosequery-queries-generic
queryAllOutgoing
	^ (MooseQueryCalculator strategy: MooseQueryOutgoingDirectionStrategy) queryAllFor: self