accessing
findNode: aModel ifAbsent: aBlock
	self canUseSortedNodes
		ifFalse: [ ^ self nodes detect: [ :node | node model = aModel ] ifNone: aBlock ].
^ self nodes
		findBinary: [ :aNode | 
			aNode model = aModel
				ifTrue: [ 0 ]
				ifFalse: [ aModel hash < aNode model hash
						ifTrue: [ -1 ]
						ifFalse: [ 1 ] ] ] ifNone: aBlock