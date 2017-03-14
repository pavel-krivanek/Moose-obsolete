*GT-Examples-Core
unsubscribe: anAnnouncementClass thoroughlyFor: aSubscriber
	^ registry protected: [
		registry subscriptions removeAllSuchThat: [ :subscription | 
			subscription subscriber class == aSubscriber class " class !!! "
			 and: [ subscription announcementClass == anAnnouncementClass ] ] ]
