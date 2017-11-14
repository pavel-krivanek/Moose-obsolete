*Moose-Query-Extensions
querySureOutgoingAssociations
	^ self queryStaticOutgoingAssociations
		addAll: self querySureOutgoingInvocations;
		yourself