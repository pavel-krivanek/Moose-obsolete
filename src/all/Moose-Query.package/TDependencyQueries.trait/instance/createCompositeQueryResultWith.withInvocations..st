moosequery-queries-outgoing
createCompositeQueryResultWith: aCollection withInvocations: invocations
	self flag: #todo.	"CyrilFerlicot: I am not sure this is used... Need to check later. Check also MooseOutgoingCompositeQueryResult class..."
	^ MooseOutgoingCompositeQueryResult on: self withInvocations: invocations withOtherDependencies: aCollection