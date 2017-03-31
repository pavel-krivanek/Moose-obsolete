private
resolve: node continueWith: remainingNodes
	| result |
	
	result := node resolveOn: self xmlElement.

	^ remainingNodes 
		ifNotEmpty: [ 
			result isCollection
				ifTrue: [ 
					((result collect: [ :each | self resolve: remainingNodes in: each ]) deepFlatten 
						select: #notNil)
						ifEmpty: [ nil ] ]
				ifFalse: [ self resolve: remainingNodes in: result ] ]
		ifEmpty: [ result ].
