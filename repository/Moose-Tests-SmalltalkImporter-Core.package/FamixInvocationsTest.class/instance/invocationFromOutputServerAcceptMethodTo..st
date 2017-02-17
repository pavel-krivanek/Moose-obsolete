model
invocationFromOutputServerAcceptMethodTo: signature

	| invocations |
	invocations := self outputServerAcceptMethod outgoingInvocations.
	^invocations detect: [:inv | inv signature = signature asSymbol].