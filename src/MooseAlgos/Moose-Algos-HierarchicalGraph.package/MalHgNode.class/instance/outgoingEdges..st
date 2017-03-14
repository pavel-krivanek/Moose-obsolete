enumerating
outgoingEdges: aLevel
	"Returns a collection of all of all outgoing relationship that are on given level.
	Returns an empty collection if there are no such relationships.
	Returns all outgoing relationships if given level is nil."
	| outgoingRelationships |
	 outgoingRelationships := Set new.
	self outgoing do: [ :rel | 
		aLevel isNil ifTrue: [
			outgoingRelationships add: rel.
		]
		ifFalse: [
			rel to level = level ifTrue: [
				outgoingRelationships add: rel.
			].
		].
	].
	^ outgoingRelationships.