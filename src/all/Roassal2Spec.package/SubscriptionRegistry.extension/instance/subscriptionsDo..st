*Roassal2Spec
subscriptionsDo: aBlock
	| copy |
	
	self protected: [ copy := subscriptions copy ].
	
	copy do: aBlock