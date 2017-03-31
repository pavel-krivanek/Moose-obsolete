creation
with: aModel
	"Creates a new instance of a MalHgNode with given object as model"
	| node |
	node := MalHgNode new.
	node model: aModel.
	^ node.