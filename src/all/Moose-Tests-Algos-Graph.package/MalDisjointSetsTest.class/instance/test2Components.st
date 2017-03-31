as yet unclassified
test2Components
	| components twoNodes threeNodes |
	ds nodes: (1 to: 5).
	ds edges: {1 -> 2. 2 -> 3 . 4 -> 5} from: #key to: #value.
	ds run.
	components := ds components.
	
	self 	assert: 2
			equals: components size.
	twoNodes := components detect: [:c | c size = 2].
	threeNodes := components detect: [:c | c size = 3].
	self assert: ((1 to: 3) hasEqualElements: threeNodes).
	self assert: ((4 to: 5) hasEqualElements: twoNodes).