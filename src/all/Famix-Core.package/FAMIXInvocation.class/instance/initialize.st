initialize-release
initialize
	super initialize.
	signature := 'nosignature'.
	candidates := FMMultiMultivalueLink on: self opposite: #incomingInvocations