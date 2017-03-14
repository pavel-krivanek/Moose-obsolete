predicates
nextDeliveryStart 

	^ self session createPredicateForBlock: [ :aContext | 
			aContext receiver isSubscription and: [  
				aContext selector =  #deliver: and: [ 
					aContext closure notNil ] ] ]