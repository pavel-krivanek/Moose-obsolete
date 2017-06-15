initialize-release
initialize
	super initialize.
	outgoingInvocations := FMNullMultivalueLink on: self opposite: #sender: selector: #outgoingInvocations.
	incomingInvocations := FMMultiMultivalueLink on: self opposite: #candidates.
	localVariables := FMNullMultivalueLink on: self opposite: #parentBehaviouralEntity: selector: #localVariables.
	implicitVariables := FMNullMultivalueLink on: self opposite: #parentBehaviouralEntity: selector: #implicitVariables.
	parameters := FMNullMultivalueLink on: self opposite: #parentBehaviouralEntity: selector: #parameters.
	accesses := FMNullMultivalueLink on: self opposite: #accessor: selector: #accesses.
	outgoingReferences := FMNullMultivalueLink on: self opposite: #source: selector: #outgoingReferences