tests
testAddNode
	| node nodesAdded nodeWithNodes |

	node := self newNode.
	nodesAdded := node nodes copyEmpty.
	nodeWithNodes := self newNodeWithNodes.

	"adding nodes from another node should remove them from the previous node"
	nodeWithNodes nodes copy do: [:each |
		nodesAdded addLast: each.
		self
			assert: (node addNode: each) == each;
			assert: node nodes = nodesAdded;
			assert: each parent == node;
			deny: (nodeWithNodes nodes includes: each)].
	self deny: nodeWithNodes hasChildren.

	"adding already present nodes should move them in-place"
	node nodes copy do: [:each |
		nodesAdded
			remove: each;
			addLast: each.
		self
			assert: (node addNode: each) == each;
			assert: node nodes = nodesAdded;
			assert: each parent == node].