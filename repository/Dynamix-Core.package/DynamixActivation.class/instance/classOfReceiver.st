accessing-derived
classOfReceiver
	"If receiver is nil, fallback to the class of the method, which may be a superclass"

	^ self receiver isNil
		ifFalse: [ self receiver type ]
		ifTrue: [ self classOfMethod ]