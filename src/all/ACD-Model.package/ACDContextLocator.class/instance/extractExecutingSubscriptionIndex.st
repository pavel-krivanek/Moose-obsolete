accessing actions
extractExecutingSubscriptionIndex

	^ context ifNotNil: [:aContext| aContext tempNamed: 'index' ]