resetting
resetNodes
	"dict keys: models, values: nodes"
	nodes := Dictionary new.
	
	"dict keys: level, values: all nodes on that level as a Collection."
	levels := Dictionary new.
	
	"If nodes are reset, we have to reset edges as well, since there can't be edges without nodes."
	self resetEdges.