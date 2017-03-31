memoization
restoreProperties: aPPContextMemento
	aPPContextMemento stream == stream ifFalse: [ self error: 'Oops!' ].
	
	properties ifNil: [ ^ self ].
	
	properties keysDo: [ :key |
		(aPPContextMemento hasProperty: key)
			ifTrue: [ properties at: key put: (aPPContextMemento propertyAt: key) ]
			ifFalse: [ properties removeKey: key  ]. 
	].

	aPPContextMemento keysAndValuesDo: [ :key :value |
		properties at: key put: value
	]