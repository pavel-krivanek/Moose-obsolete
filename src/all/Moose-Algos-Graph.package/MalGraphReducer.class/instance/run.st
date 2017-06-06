running
run
	self findCircuits.
	self mergeNodesInCircuits.
	^ self nodes