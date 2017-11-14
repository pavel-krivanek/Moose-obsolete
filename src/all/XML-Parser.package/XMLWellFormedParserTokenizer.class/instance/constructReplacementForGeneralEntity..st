entity replacing
constructReplacementForGeneralEntity: anEntity
	isInLiteralValue
		ifTrue: [
			anEntity isExternal
				ifTrue: [self errorLiteralReferenceToExternalGeneralEntity: anEntity].
			self constructLiteralReplacementForEntity: anEntity]
		ifFalse: [
			driver handleStartContentEntityReplacement: anEntity name.
			self
				pushBackEntity: anEntity
				whenPoppedDo: [driver handleEndContentEntityReplacement: anEntity name]]