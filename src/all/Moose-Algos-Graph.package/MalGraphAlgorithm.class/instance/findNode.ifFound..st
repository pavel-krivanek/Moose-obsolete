accessing
findNode: aModel ifFound: aBlock
	self canUseSortedNodes
		ifFalse: [ ^ self nodes detect: [ :node | node model = aModel ] ifFound: aBlock ].
	self halt