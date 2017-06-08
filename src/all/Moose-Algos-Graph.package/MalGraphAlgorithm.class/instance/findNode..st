accessing
findNode: aModel
	self canUseSortedNodes
		ifFalse: [ ^ self nodes detect: [ :aNode | aNode model = aModel ] ].
	^ self nodes findBinary: (self findBinaryBlock: aModel)