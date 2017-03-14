accessing actions
extractExecutingSubscriptionIndex

	^ context ifNotNilDo: [:aContext| aContext tempNamed: 'index' ]