actions
locateAnnouncementDelivery
	"Locate the context responsible with initiating the delivery of a subscription.
	From this context the active subscriptions and the current executing subscription,
	should be extracted."
	
	^ self 
		skipUntilSubscriptionDeliveryContext;
		result