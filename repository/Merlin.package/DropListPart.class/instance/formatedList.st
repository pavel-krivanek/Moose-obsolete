accessing
formatedList

	^ self list collect: [:each |
		each isNil
			ifTrue: ['']
			ifFalse: [self formatBlock meValue: each]
		 ]