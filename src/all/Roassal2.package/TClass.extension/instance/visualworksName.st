*roassal2-exportervw
visualworksName
	^ self == TBehavior 
		ifTrue: [ 'Core.Behavior' ]
		ifFalse: [ self name ]