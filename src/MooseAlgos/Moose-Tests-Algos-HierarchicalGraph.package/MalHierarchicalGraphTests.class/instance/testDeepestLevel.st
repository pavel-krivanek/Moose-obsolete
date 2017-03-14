tests
testDeepestLevel
	| hg rootNodes |
	rootNodes := OrderedCollection new.
	rootNodes add: 'a'.
	hg := MalHierarchicalGraph with: rootNodes.
	hg
		topDown: [ :entity | 
			entity size < 3
				ifTrue: [ 
					| result |
					result := Set new.
					result add: entity , 'a'.
					result add: entity , 'b'.
					result ] ].
	self assert: hg deepestLevel equals: 2