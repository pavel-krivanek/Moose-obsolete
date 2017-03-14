instance creation
withAll: aCollectionOfBindings
	^ self new variableBindings: (aCollectionOfBindings inject: Dictionary new into: [:dict :each | dict at: each key put: each value. dict])