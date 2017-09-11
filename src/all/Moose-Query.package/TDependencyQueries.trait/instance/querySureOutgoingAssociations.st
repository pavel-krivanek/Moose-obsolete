moosequery-queries-outgoing
querySureOutgoingAssociations
	^ self queryStaticOutgoingAssociations
		addAll: self querySureOutgoingInvocations;
		yourself