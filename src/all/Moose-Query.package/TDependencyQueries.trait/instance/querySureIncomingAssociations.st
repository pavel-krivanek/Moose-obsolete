moosequery-queries-incoming
querySureIncomingAssociations
	^ self queryStaticIncomingAssociations
		addAll: self querySureIncomingInvocations;
		yourself