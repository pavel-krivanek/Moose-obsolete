testing
hasPushedBackEntities
	pushedBackEntities == nil
		ifTrue: [^ false].
	^ pushedBackEntities size > 0.