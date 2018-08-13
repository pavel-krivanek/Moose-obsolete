accessing
resolvedNameOrNil

	^ self hasResolvedName
		ifTrue: [ self name. ]
		ifFalse: [ nil ].		