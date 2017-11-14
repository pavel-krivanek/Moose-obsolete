*Moose-Query-Extensions
querySureIncomingAssociations
	^ self queryStaticIncomingAssociations
		addAll: self querySureIncomingInvocations;
		yourself