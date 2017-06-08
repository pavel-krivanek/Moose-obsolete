testing
canUseSortedNodes
	"New implementation of the algos to have better performances to find nodes"
	"If nodes are sorted following this block, the find method will be a lot faster. The block should be set on the run method and the nodes sorted at this moment"

	^ nodeSortBlock ~= nil