method-classifying
matchConstant: aMethodNode 
	aMethodNode body isSequence 
		ifTrue: 
			[aMethodNode body statements isEmpty 
				ifFalse: 
					[aMethodNode body statements last isReturn 
						ifTrue: 
							[aMethodNode body statements last value isLiteralNode
								ifTrue: [famixMethod kind: #constant]]]]