initialize-release
initialize
	super initialize.
	sender := nil.
	receiver := nil.
	receiverSourceCode := nil.
	signature := 'nosignature'.
	candidates := FMMultiMultivalueLink on: self opposite: #incomingInvocations.