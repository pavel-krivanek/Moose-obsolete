accesing
definitionFor: anObject 

	^ self definitionFor: anObject ifAbsentRegister: [ anObject ensureRingDefinitionIn: self environment ]
