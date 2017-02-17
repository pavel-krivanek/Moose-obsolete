enumerating
incomingFrom: aNode
	"Returns all edges that are incoming from given node, nil if no such edge was found."
	| result |
	result := nil.
	self incoming do: [:rel | 
		(rel from == aNode) ifTrue: [
			(result isNil) ifTrue: [
				result := Set new.
			].
			result add: rel.
		].
	].
	^ result.