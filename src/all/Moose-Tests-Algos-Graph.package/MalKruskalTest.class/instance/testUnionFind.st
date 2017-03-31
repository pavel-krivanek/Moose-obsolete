tests
testUnionFind
	| node1 node2 node3 node4 |
	nodes
		do: [ :node | 
			self assert: node parent equals: nil.
			node makeSet.
			self assert: node parent equals: node.
			self assert: node find equals: node ].
	node1 := nodes at: 1.
	node2 := nodes at: 2.
	node3 := nodes at: 3.
	node4 := nodes at: 4.
	node1 union: node2.
	self assert: node1 find equals: node1.
	self assert: node2 find equals: node1.
	node2 union: node3.
	self assert: node2 find equals: node1.
	self assert: node3 find equals: node1.
	self assert: node3 parent equals: node1.
	node4 union: node1.
	nodes do: [ :node | self assert: node find equals: node4 ].
	self assert: node1 parent equals: node4.
	self assert: node2 parent equals: node1.
	self assert: node3 parent equals: node1.
	self assert: node4 parent equals: node4