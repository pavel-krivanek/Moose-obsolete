initialization
forAnnouncerContext: anAnnouncerContext receiverContext: aReceiverContext
	|stackFilter|

	self reset.
	
	announcerContext := anAnnouncerContext.

	stackFilter := self stackFilterFor: aReceiverContext.
	(stackFilter locateAnnouncementDelivery) isNil ifTrue: [ ^ self ]. "aContext was not created as direct result of an announcemnt."
		
	announcement := stackFilter extractAnnouncement.
	executingSubscriptionIndex := stackFilter extractExecutingSubscriptionIndex. 
	activeSubscriptions := Array withAll: stackFilter extractActiveSubscriptions.
	
	
	
	
	
	