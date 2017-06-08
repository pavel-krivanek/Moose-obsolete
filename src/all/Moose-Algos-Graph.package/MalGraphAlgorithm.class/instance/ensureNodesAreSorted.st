private
ensureNodesAreSorted
	"New implementation of the algos to have better performances to find nodes"
	"If one change is made in the node list, one should call again sortNodes"

	nodeSortBlock ifNotNil: [ ^ self ].
	self nodeSortBlock: [ :a :b | a model hash <= b model hash ].
	self sortNodes