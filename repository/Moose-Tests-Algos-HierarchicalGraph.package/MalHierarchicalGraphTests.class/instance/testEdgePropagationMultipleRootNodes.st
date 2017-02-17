tests
testEdgePropagationMultipleRootNodes
	| hg rootNodes visualizer relationships |
	rootNodes := OrderedCollection new.
	rootNodes
		add: 'a';
		add: 'b';
		add: 'c'.
	hg := MalHierarchicalGraph with: rootNodes.
	hg
		blockToGetChildren: [ :entity | 
			entity size < 6
				ifTrue: [ 
					| result |
					result := Set new.
					result add: entity , 'a'.
					result add: entity , 'b'.
					result add: entity , 'c'.
					result ] ].
	relationships := OrderedCollection new.
	relationships add: 'ab' -> 'ba'.	"relationships add: ('ab'->'bb').
	relationships add: ('ab'->'bca')."
	hg addEdges: relationships sourceBlock: [ :r | r key ] destinationBlock: [ :r | r value ].
	hg propagateEdges.	"Testing relationships and their propagandation."
	self assert: (hg nodeWrapping: 'a') outgoing size equals: 2.
	self assert: (hg nodeWrapping: 'ab') outgoing size equals: 2.
	self assert: hg edgesPropagated size equals: 3.
	self assert: hg edgesNotPropagated size equals: 1.
	self assert: (hg nodeWrapping: 'b') incoming size equals: 2