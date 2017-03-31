filtering actions
skipUntilSubscriptionDeliveryContext

	self findContextSuchThat: [ :aContext | 
		aContext receiver class = SubscriptionRegistry and: [  
			aContext selector =  #deliver:to:startingAt: and: [ 
				aContext closure isNil ] ] ]