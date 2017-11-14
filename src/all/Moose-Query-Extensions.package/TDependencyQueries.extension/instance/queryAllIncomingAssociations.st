*Moose-Query-Extensions
queryAllIncomingAssociations
	"Be careful while using me. I hardcode the associations I should query. Users can override me if they want to query only certain types of association for performance reasons. If you prefere to be sure of your results you should use #queryAllIncoming instead."

	^ self queryStaticIncomingAssociations
		addAll: self queryAllIncomingInvocations;
		yourself