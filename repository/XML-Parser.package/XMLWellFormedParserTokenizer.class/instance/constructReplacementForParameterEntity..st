entity replacing
constructReplacementForParameterEntity: anEntity
	isInLiteralValue
		ifTrue: [self constructReplacementForLiteralContextEntity: anEntity]
		ifFalse: [
			streamReader pushBackCharacter: NormalizedSpace.
			self
				pushBackEntity: anEntity
				whenPoppedDo: nil.
			streamReader pushBackCharacter: NormalizedSpace]