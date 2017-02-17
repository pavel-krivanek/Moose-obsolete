utilities
assertEquivalentInvariant: aNode
	"Assert that each node is equivalent to itself."
	
	aNode nodesDo: [ :node | 
		self assert: node = node.
		self assert: node hash = node hash ]