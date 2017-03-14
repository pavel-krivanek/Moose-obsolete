creation
in: hiGraph with: aModel level: level
	"Creates a new instance of a MalHgNode for given hiGraph, with given object as model, on given level."
	| node |
	node := MalHgNode new.
	node model: aModel.
	node hiGraph: hiGraph.
	node level: level.
	^ node.