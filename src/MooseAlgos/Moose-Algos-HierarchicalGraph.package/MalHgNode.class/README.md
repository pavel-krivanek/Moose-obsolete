A MalHgNode is a node inside a hierarchical graph. It knows the graph it belongs to, its children and its parent, on which level in the graph it resides and its outgoing ind incoming edges. One can also store arbitrary informaition as attributes to a node.

Instance Variables
	attributes:		<Dictionary>
	children:		<OrderedCollection>
	hiGraph:		<MalHierarchicalGraph>
	incoming:		<OrderedCollection>
	level:		      <Number>
	outgoing:		<OrderedCollection>
	parent:		      <MalHgNode>

attributes
	- Dictionary to attach arbitrary information to a node

children
	- This nodes children. Empty collection if the node is a leaf in the hierarchy.

hiGraph
	- The MalHierarchicalGraph this node belongs to.

incoming
	- All incoming edges to this node.

level
	- The level this node is on in the hierachy where 0 is the top level (root nodes). The larger the number, the deeper down in the hierarchy the node is located.

outgoing
	- All outgoing edges from this node.

parent
	- This nodes parent
