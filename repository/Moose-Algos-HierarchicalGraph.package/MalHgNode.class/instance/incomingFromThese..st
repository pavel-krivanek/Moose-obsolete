enumerating
incomingFromThese: aNodeCollection
	"Returns all edges that are incoming from given node collection, empty collection if no such edge was found."
	 | result |
	result := Set new.
	aNodeCollection do: [ :node |
		result addAll: (self incomingFrom: node).
	].
	^ result.