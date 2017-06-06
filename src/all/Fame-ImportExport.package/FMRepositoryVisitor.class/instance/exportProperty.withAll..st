exporting
exportProperty: property withAll: values
	printer beginAttribute: property name.
	property type isPrimitive
		ifTrue: [ values do: [ :each | printer primitive: each ] ]
		ifFalse: [ property isComposite
				ifTrue: [ values
						do: [ :each | 
							((self isPrimitiveTypeOrObject: each) and: [ self shouldIgnoreProperty: each ])
								ifFalse: [ self exportElement: each ] ] ]
				ifFalse: [ values
						do: [ :each | 
							(self isPrimitiveTypeOrObject: each)
								ifTrue: [ printer referenceName: each name ]
								ifFalse: [ printer referenceNumber: (self indexOf: each) ] ] ] ].
	printer endAttribute: property name