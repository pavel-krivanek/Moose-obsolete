tests
testEdgePropagationSimple
	| hg rootNodes visualizer relationships |
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
	relationships add: 'abb' -> 'aab'.
	hg addEdges: relationships sourceBlock: [ :r | r key ] destinationBlock: [ :r | r value ].
	hg propagateEdges.	"Testing relationships and their propagandation."
	self assert: (hg nodeWrapping: 'ab') outgoing size equals: 2.
	self assert: (hg nodeWrapping: 'abb') outgoing size equals: 2.
	self assert: (hg nodeWrapping: 'aa') incoming size equals: 2.
	self assert: hg edgesPropagated size equals: 3.
	self assert: hg edgesNotPropagated size equals: 1	"hg explore."	"visualizer := SnVisualizer show: hg withWeightBlock: [ :e | e size ]."	"visualizer := SnVisualizer with: hg weightBlock: [ :e | e size ]."	"visualizer showAsTree."	"visualizer showSplitOn: 2."	"visualizer show: (hg nodesFor: ((Set with: 'a') add: 'b'; add: 'ca'; add: 'cb'; add: 'cc'; yourself))."