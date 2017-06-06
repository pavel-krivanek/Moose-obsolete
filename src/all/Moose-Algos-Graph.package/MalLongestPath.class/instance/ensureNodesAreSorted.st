running
ensureNodesAreSorted
	"If one change is made in the node list, one should call again sortNodes"

	nodeSortBlock ifNotNil: [ ^ self ].
	self nodeSortBlock: [ :a :b | a model hash <= b model hash ].
	self sortNodes