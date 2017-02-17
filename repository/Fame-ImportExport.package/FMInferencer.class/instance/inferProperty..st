inferring
inferProperty: anAbstractAttribute 
	| type |
	builder 
		new: 'FM3.Property'
		with: 
			[ builder 
				a: 'name'
				of: anAbstractAttribute name.
			builder 
				a: 'type'
				of: 
					[ type := anAbstractAttribute inferElementType.
					type isSymbol 
						ifTrue: [ builder ref: type ]
						ifFalse: [ builder ref: type serial ] ].
			anAbstractAttribute inferMultivalued ifTrue: 
				[ builder 
					a: 'multivalued'
					of: true ] ]