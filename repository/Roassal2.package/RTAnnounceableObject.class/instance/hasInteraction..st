testing
hasInteraction: anInteractionClass
	"Return true or false if the receiver has an interaction. Note that the argument has to be an interaction class. And not an event"
	self announcer subscriptions ifNil: [ ^ false ].
	
	^ self announcer subscriptions handleSubscriberClass: anInteractionClass