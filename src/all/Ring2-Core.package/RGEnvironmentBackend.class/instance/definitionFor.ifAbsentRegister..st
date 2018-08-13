accesing
definitionFor: anObject ifAbsentRegister: aDefinitionOrBlock

	^ providedDefinitions at: anObject 
		ifPresent: [:definition | definition ]
		ifAbsentPut: [ aDefinitionOrBlock value ].