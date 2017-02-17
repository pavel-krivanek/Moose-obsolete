enumerating
outgoingDestinations: aLevel
	"Returns a collection of all destination nodes of all outgoing relationship that are on given level.
	Returns an empty collection if there are no such nodes.
	Returns all outgoing destinations if given level is nil."
	| outgoingDestinations |
	 outgoingDestinations := Set new.
	self outgoing do: [ :rel | 
		aLevel isNil ifTrue: [
			outgoingDestinations add: rel destination.
		]
		ifFalse: [
			rel destination level = level ifTrue: [
				outgoingDestinations add: rel destination.
			].
		].
	].
	^ outgoingDestinations.