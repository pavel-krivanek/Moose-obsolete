accessing
topPushedBackEntity
	"heavily optimized"
	pushedBackEntities == nil
		ifTrue: [^ nil].
	pushedBackEntities size > 0
		ifFalse: [^ nil].
	^ pushedBackEntities at: pushedBackEntities size.