descriptions
descriptionDefaultValue
	<magritteDescription>
	^ MAStringDescription new
		accessor: (self descriptionAccessor: #defaultValue);
		accessor:
			(MAPluggableAccessor
				read: [ :me | 
					(reader value: me) defaultValue
						ifNil: [ '' ]
						ifNotNil: [ ((reader value: me) defaultValue isKindOf: OPUMLOpaqueExpression)
								ifTrue: [ (reader value: me) defaultValue bodies first ]
								ifFalse: [ '' ] ] ]
				write: [ :me :newValue | 
					(reader value: me) defaultValue
						ifNil: [ (reader value: me) defaultValue: OPUMLOpaqueExpression new ].
					((reader value: me) defaultValue isKindOf: OPUMLOpaqueExpression)
						ifTrue: [ (reader value: me) defaultValue bodies: {newValue} ].
					me refreshFigure ]);
		label: labelPrefix , 'Default Value';
		priority: 42;
		yourself