tests
testAddNodeAfter
	| node nodesAdded nodeWithNodes nodeAfter |

	node := self newNode.
	nodesAdded := node nodes copyEmpty.
	nodeWithNodes := self newNodeWithNodes.

	"adding nodes from another node should remove them from the previous node"
	nodeAfter := nodeWithNodes firstNode.
	nodesAdded addLast: nodeAfter.
	node addNode: nodeAfter.
	nodeWithNodes nodes reversed do: [:each |
		nodesAdded
			add: each
			after: nodeAfter.
		self
			assert: (node addNode: each after: nodeAfter) == each;
			assert: node nodes = nodesAdded;
			assert: each parent == node;
			deny: (nodeWithNodes nodes includes: each)].
	self deny: nodeWithNodes hasChildren.

	"adding already present nodes should move them in-place"
	nodeAfter := nodesAdded last.
	node nodes allButLast reverseDo: [:each |
		nodesAdded
			remove: each;
			add: each after: nodeAfter.
		self
			assert: (node addNode: each after: nodeAfter) == each;
			assert: node nodes = nodesAdded;
			assert: each parent == node].