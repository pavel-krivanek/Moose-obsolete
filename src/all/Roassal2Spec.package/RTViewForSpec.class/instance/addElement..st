adding
addElement: anElement

	super addElement: anElement.
	
	anElement announcer subscriptions 
		subscriptionsDo: [ :reg | 
			anElement 
				when: reg announcementClass
				do: [ :ann | lastEvent value: ann ] ]