accessing
findNode: aModel
	self canUseSortedNodes
		ifFalse: [ ^ self nodes detect: [ :aNode | aNode model = aModel ] ].
	^ self nodes
		findBinary: [ :aNode | 
			aNode model = aModel
				ifTrue: [ 0 ]
				ifFalse: [ aModel hash < aNode model hash
						ifTrue: [ -1 ]
						ifFalse: [ 1 ] ] ]