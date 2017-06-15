moosequery-queries-incoming
querySureIncomingInvocations
	^ self queryAllIncomingInvocations select: [ :invo | invo isASureInvocation ]