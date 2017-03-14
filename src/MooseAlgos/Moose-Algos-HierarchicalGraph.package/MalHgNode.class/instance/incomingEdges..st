enumerating
incomingEdges: aLevel
	"Returns a collection of of all incoming edges that are on given level.
	Returns an empty collection if there are no incoming edges. 
	Returns all incoming edges if given level is nil"
	| incomingEdges |
	 incomingEdges := Set new.
	self incoming do: [ :rel | 	
		aLevel isNil ifTrue: [
			incomingEdges add: rel.
		]
		ifFalse: [
			rel from level = level ifTrue: [
				incomingEdges add: rel.
			].
		].
		
	].
	^ incomingEdges.