*Moose-Query-Extensions
querySureOutgoingInvocations
	^ self queryAllOutgoingInvocations select: [ :invo | invo isASureInvocation ]