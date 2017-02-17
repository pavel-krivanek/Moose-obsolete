as yet unclassified
acdActionTypeForDebugger: aDebugger
	<gtContextACDSubscriptionDebuggingAction>
	
	^ (self forDebugger: aDebugger)
		targetSubscription: aDebugger selectedSubscription
		