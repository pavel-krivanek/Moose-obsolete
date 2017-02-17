adding
addChild: aNode
	"Adds a child node."
	(children includes: aNode) ifFalse: [
		children add: aNode.
	]