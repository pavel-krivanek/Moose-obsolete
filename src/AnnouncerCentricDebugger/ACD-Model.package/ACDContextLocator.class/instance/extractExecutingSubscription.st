accessing actions
extractExecutingSubscription
	
	^ context ifNotNilDo: [:aContext|
		(aContext tempNamed: 'subs') at: (aContext tempNamed: 'index')  ]