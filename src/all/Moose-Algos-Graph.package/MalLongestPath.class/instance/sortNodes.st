as yet unclassified
sortNodes
	self canUseSortedNodes ifFalse: [ ^self ].
	self nodes sort: nodeSortBlock.