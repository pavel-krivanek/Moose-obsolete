enumerating
nodesWrapping: aModelCollection
	"Returns the nodes wrapping the given models or an empty collection if no such nodes could be found in the graph."
	| result |
	result := OrderedCollection new.
	
	nodes do: [ :node | 
		aModelCollection do: [ :model | (node model = model) ifTrue: [ result add: node ]].
	].

	^ result.