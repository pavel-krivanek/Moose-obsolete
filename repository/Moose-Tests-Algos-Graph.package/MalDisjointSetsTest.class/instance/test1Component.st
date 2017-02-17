as yet unclassified
test1Component
	| components twoNodes threeNodes |
	ds nodes: (1 to: 5).
	ds edges: {1 -> 2. 2 -> 3 . 4 -> 5. 1 -> 5} from: #key to: #value.
	ds run.
	components := ds components.
	
	self 	assert: 1
			equals: components size.
	self assert: ((1 to: 5) hasEqualElements: components first)