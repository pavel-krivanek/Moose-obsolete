accessing
findNode: aModel ifAbsent: aBlock
	self canUseSortedNodes
		ifFalse: [ ^ self nodes detect: [ :node | node model = aModel ] ifNone: aBlock ].
^ self nodes
		findBinary: (self findBinaryBlock: aModel) ifNone: aBlock