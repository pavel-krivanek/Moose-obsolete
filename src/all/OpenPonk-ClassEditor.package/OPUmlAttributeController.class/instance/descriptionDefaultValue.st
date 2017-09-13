forms
descriptionDefaultValue
	<magritteDescription>
	^ MAStringDescription new
		accessor: (self descriptionAccessor: #defaultValue);
		accessor:
			(MAPluggableAccessor
				read: [ :me | 
					me model defaultValue
						ifNil: [ '' ]
						ifNotNil: [ (me model defaultValue isKindOf: OPUMLOpaqueExpression)
								ifTrue: [ me model defaultValue bodies first ]
								ifFalse: [ '' ] ] ]
				write: [ :me :newValue | 
					me model defaultValue ifNil: [ me model defaultValue: OPUMLOpaqueExpression new ].
					(me model defaultValue isKindOf: OPUMLOpaqueExpression)
						ifTrue: [ me model defaultValue bodies: {newValue} ].
					self refreshFigure ]);
		label: 'Default Value';
		priority: 42;
		yourself