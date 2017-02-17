setup
setupSimpleBottomUpModel
	| hg result |
	result := OrderedCollection new.
	hg := MalHierarchicalGraph with: (self setupSimpleTopDownModel). 
	hg topDown: #children.
	(hg nodesOnLevel: 4) do: [ :e | result add: e model ].
	^ result.