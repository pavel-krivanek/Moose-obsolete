*Famix-Extensions-navigation
outgoingInvocationsGroup
	<navigation: 'Outgoing invocations'>
	^ self privateState cacheAt:
		#outgoingInvocationsGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self outgoingInvocations
				withDescription: 'Outgoing invocations from ' , self mooseName]