moosequery-queries-incoming
queryAllIncomingAssociations
	
	^ self queryStaticIncomingAssociations
		addAll: self queryAllIncomingInvocations;
		yourself