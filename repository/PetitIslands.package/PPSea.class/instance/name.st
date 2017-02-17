queries
name
	^ super name ifNil: [ 
		island name ifNil: ['unknown island'] ifNotNil: [ island name, ' island' ] ].