accessing
findNode: aModel ifFound: aBlock
	self canUseSortedNodes
		ifFalse: [ ^ self nodes detect: [ :node | node model = aModel ] ifFound: aBlock ].
	"New implementation of the algos to have better performances to find nodes"
	self notYetImplemented