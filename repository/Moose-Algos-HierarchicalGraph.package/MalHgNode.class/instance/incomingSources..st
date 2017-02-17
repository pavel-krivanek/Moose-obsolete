enumerating
incomingSources: aLevel
	"Returns a collection of all source nodes of all incoming edges that are on given level.
	Returns an empty collection if there are no incoming edges.
	Returns all incoming sources if given level is nil."
	| incomingSources |
	 incomingSources := Set new.
	self incoming do: [ :rel | 	
		aLevel isNil ifTrue: [
			incomingSources add: rel from.
		]
		ifFalse: [
			rel from level = level ifTrue: [
				incomingSources add: rel from.
			].
		].
		
	].
	^ incomingSources.