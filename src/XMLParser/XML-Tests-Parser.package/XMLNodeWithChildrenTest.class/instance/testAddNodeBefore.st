tests
testAddNodeBefore
	| node nodesAdded nodeWithNodes nodeBefore |

	node := self newNode.
	nodesAdded := node nodes copyEmpty.
	nodeWithNodes := self newNodeWithNodes.

	"adding nodes from another node should remove them from the previous node"
	nodeBefore := nodeWithNodes lastNode.
	nodesAdded addLast: nodeBefore.
	node addNode: nodeBefore.
	nodeWithNodes nodes copy do: [:each |
		nodesAdded
			add: each
			before: nodeBefore.
		self
			assert: (node addNode: each before: nodeBefore) == each;
			assert: node nodes = nodesAdded;
			assert: each parent == node;
			deny: (nodeWithNodes nodes includes: each)].
	self deny: nodeWithNodes hasChildren.

	"adding already present nodes should move them in-place"
	nodeBefore := nodesAdded first.
	node nodes allButFirst reverseDo: [:each |
		nodesAdded
			remove: each;
			add: each before: nodeBefore.
		self
			assert: (node addNode: each before: nodeBefore) == each;
			assert: node nodes = nodesAdded;
			assert: each parent == node].