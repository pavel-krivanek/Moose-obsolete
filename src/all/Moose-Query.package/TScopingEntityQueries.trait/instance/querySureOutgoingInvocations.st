moosequery-TScopingEntityQueries
querySureOutgoingInvocations
	
	^ self createOutgoingQueryResultWith:
											((self queryOutgoing: FAMIXInvocation) select: [:invo | invo isASureInvocation])