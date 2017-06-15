moosequery-queries-outgoing
querySureOutgoingInvocations
	^ self queryAllOutgoingInvocations select: [ :invo | invo isASureInvocation ]