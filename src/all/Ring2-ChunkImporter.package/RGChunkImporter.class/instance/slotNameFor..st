private
slotNameFor: definitionAST

	^ (definitionAST respondsTo: #receiver)
		ifTrue: [ self slotNameFor: definitionAST receiver  ]
		ifFalse: [ definitionAST value  ]