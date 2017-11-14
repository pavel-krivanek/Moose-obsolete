entity replacing
constructReplacementForParameterEntity: anEntity
	isInLiteralValue
		ifTrue: [self constructLiteralReplacementForEntity: anEntity]
		ifFalse: [
			"the trailing space"
			streamReader pushBackCharacter: NormalizedSpace.
			self
				pushBackEntity: anEntity
				whenPoppedDo: nil.
			"the leading space"
			streamReader pushBackCharacter: NormalizedSpace]