private
textAttributesForSubscription: aSubscription 

	(self session executingSubscription == aSubscription) 
		ifTrue: [ ^ {TextEmphasis bold} ].
		
	(self session hasSubscriptionExecuted: aSubscription )
		ifTrue: [ ^ {TextColor color: Color lightGray. TextEmphasis italic} ].
		
	^ {TextColor black}