*Moose-Query-Extensions
querySureIncomingInvocations
	^ self queryAllIncomingInvocations select: [ :invo | invo isASureInvocation ]