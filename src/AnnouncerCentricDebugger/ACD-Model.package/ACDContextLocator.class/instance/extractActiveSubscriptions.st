accessing actions
extractActiveSubscriptions

	^ context ifNotNilDo: [:aContext| aContext tempNamed: 'subs']