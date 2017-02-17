moosequery-queries-outgoing
createCompositeQueryResultWith: aCollection withInvocations: invocations
	
	^ MooseOutgoingCompositeQueryResult
			on: self
			withInvocations: invocations
			withOtherDependencies: aCollection