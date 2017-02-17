tests
testAddNodes
	| node nodesAdded nodeWithNodes |

	node := self newNode.
	nodeWithNodes := self newNodeWithNodes.

	"adding nodes from another node should remove them from the previous node"
	nodesAdded := nodeWithNodes nodes copy.
	self
		assert: (node addNodes: nodesAdded) = nodesAdded;
		assert: node nodes = nodesAdded;
		assert: (node nodes allSatisfy: [:each | each parent == node]);
		deny: nodeWithNodes hasChildren.

	"adding already present nodes should move them in-place"
	nodesAdded := nodesAdded reversed.
	self
		assert: (node addNodes: nodesAdded) = nodesAdded;
		assert: node nodes = nodesAdded;
		assert: (node nodes allSatisfy: [:each | each parent == node]).