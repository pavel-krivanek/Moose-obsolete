parsing
parseOn: aPPContext
	| memento contextMemento  aStream |
	"TODO: JK memoizing needs review!"
	self check: aPPContext.
	contextMemento := aPPContext remember.
	memento := (buffer at: contextMemento ifAbsentPut: [ PPMemento new ]).
	
	memento contextMemento isNil
		ifTrue: [
			aStream := aPPContext stream.
			memento result: (aStream size - aStream position + 2 < memento count
				ifTrue: [ PPFailure message: 'overflow' context: aPPContext ]
				ifFalse: [ memento increment. parser parseOn: aPPContext ]).
			memento contextMemento: aPPContext remember ]
		ifFalse: [ aPPContext restore: memento contextMemento ].
	^ memento result.