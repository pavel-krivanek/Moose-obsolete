private
killState
	| index |
	index := states identityIndexOf: currentState.
	index > 0
		ifFalse: [ ^ self ].
	states removeAt: index.
	states isEmpty
		ifTrue: [ self handleError: 0 ].
	(states size = 1 and: [ parseAll not ])
		ifTrue: [ states first runDeferredActionsFor: self ]