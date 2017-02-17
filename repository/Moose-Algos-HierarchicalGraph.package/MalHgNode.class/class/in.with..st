creation
in: hiGraph with: aModel
	"Creates a new instance of a MalHgNode for given hiGraph, with given object as model."
	| node |
	node := MalHgNode new.
	node hiGraph: hiGraph.
	node model: aModel.
	^ node.