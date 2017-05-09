moosequery-queries-incoming
querySureIncomingInvocations
	"from privateSureIncomingInvocations"
	
	^ self createIncomingQueryResultWith:
		(self incomingInvocations selectAsSet: [ :invo || requestorMtd | 
			requestorMtd := invo sender. 
			requestorMtd ~~ self and: [self isSurelyInvokedBy: requestorMtd ]])