moosequery-TScopingEntityQueries
querySureIncomingInvocations
	^ self queryAllIncomingInvocations select: [ :invo | invo isASureInvocation ]