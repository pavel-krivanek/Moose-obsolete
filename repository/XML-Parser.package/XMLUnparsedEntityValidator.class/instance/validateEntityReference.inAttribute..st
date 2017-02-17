validating
validateEntityReference: anEntity inAttribute: anAttribute
	(self unparsedEntities includesKey: anEntity)
		ifFalse: [
			self
				errorUndeclaredUnparsedEntityReference: anEntity
				inAttribute: anAttribute]