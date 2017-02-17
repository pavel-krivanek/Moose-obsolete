memoization
rememberProperties: aPPContextMemento
	properties ifNil: [ ^ self ].
	
	properties keysAndValuesDo: [ :key :value |
		aPPContextMemento propertyAt: key put: value
	].