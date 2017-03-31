entity collection
removeModelNamed: aStringOrSymbol

	| el |
	el := self entityStorage elements detect: [:each | each name = aStringOrSymbol asSymbol] ifNone: [nil].
	el ifNotNil: [self entityStorage remove: el.
				el privateSetMooseModel: nil.].
	^el