testing
hasSubscriptionExecuted: aSubscription

	^ (self activeSubscriptions indexOf: aSubscription ifAbsent: [ 0 ]) < executingSubscriptionIndex 