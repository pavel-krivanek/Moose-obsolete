moosequery-TScopingEntityQueries
querySureOutgoingInvocations
	^ self queryAllOutgoingInvocations select: [ :invo | invo isASureInvocation ]