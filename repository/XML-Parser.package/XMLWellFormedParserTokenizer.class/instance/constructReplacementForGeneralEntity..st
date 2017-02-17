entity replacing
constructReplacementForGeneralEntity: anEntity
	isInLiteralValue
		ifTrue: [
			anEntity isExternal
				ifTrue: [self errorLiteralContextExternalEntity: anEntity].
			self constructReplacementForLiteralContextEntity: anEntity]
		ifFalse: [
			driver handleStartContentEntityReplacement: anEntity name.
			self
				pushBackEntity: anEntity
				whenPoppedDo: [driver handleEndContentEntityReplacement: anEntity name]]