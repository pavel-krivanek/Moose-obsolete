tests
testEdgePropagationAsymetrical
	| hg rootNodes relationships |
	rootNodes := OrderedCollection new.
	rootNodes add: 'a'.
	hg := MalHierarchicalGraph with: rootNodes.
	hg
		blockToGetChildren: [ :entity | 
			entity size < 3
				ifTrue: [ 
					| result |
					result := Set new.
					result add: entity , 'a'.
					result add: entity , 'b'.
					result ] ].
	relationships := OrderedCollection new.
	relationships add: 'abb' -> 'aa'.
	hg addEdges: relationships from: [ :r | r key ] to: [ :r | r value ].
	hg propagateEdges.	"Testing relationships and their propagandation."
	self assert: (hg nodeWrapping: 'ab') outgoing size equals: 1.
	self assert: (hg nodeWrapping: 'abb') outgoing size equals: 1.
	self assert: (hg nodeWrapping: 'aa') incoming size equals: 2.
	self assert: hg edgesPropagated size equals: 1.
	self assert: hg edgesNotPropagated size equals: 1