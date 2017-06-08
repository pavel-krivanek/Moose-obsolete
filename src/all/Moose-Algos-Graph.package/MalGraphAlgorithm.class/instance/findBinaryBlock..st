private
findBinaryBlock: aModel
	"New implementation of the algos to have better performances to find nodes"
	^ [ :aNode | 
	aNode model = aModel
		ifTrue: [ 0 ]
		ifFalse: [ aModel hash < aNode model hash
				ifTrue: [ -1 ]
				ifFalse: [ 1 ] ] ]