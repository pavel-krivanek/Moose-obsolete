instance creation
withAll: collection 

	| common wantedClass wantedType |
	^ self = HismoHistoryGroup
		ifTrue: [ 
			common := collection commonSuperclass.
			wantedType := (common name, 'Group') asSymbol.
			wantedClass := self allSubclasses detect: [:each | each name = wantedType ] ifNone: [HismoHistoryGroup].
			self withKnownType: wantedClass withAll: collection ]
		ifFalse: [ self withKnownType: self withAll: collection ]