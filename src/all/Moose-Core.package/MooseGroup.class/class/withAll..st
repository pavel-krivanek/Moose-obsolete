instance creation
withAll: collection
	^ self = MooseGroup
		ifTrue: [ | wantedClass wantedType |
			wantedType := (collection commonSuperclass name , 'Group') asSymbol.
			wantedClass := self allSubclasses detect: [ :each | each name = wantedType ] ifNone: [ MooseGroup ].
			self withKnownType: wantedClass withAll: collection ]
		ifFalse: [ self withKnownType: self withAll: collection ]