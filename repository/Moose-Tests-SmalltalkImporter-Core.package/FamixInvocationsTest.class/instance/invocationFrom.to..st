model
invocationFrom: unqiueName to: signature 
	| invocations |
	invocations := (self model allMethods entityNamed: unqiueName asSymbol) outgoingInvocations.
	^invocations detect: [:inv | inv signature = signature asSymbol]