predicates
subscriptionDeliveryFor: aSubscription.
	
	^ self createPredicateForBlock: [ :aContext |  
			aContext receiver == aSubscription subscriber and: [
				aContext method selector = aSubscription action selector] ].