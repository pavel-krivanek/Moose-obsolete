entity replacing
pushBackEntity: anEntity whenPoppedDo: aBlock
	anEntity hasReplacement
		ifTrue: [| pushedBackEntity |
			pushedBackEntity :=
				self addPushedBackEntity: anEntity asPushedBackEntity.
			streamReader
				pushBackStream: pushedBackEntity replacementStream
				whenPoppedDo: [
					self removePushedBackEntity: pushedBackEntity.
					aBlock
						ifNotNil: [aBlock value]]
				isExternal: pushedBackEntity isExternal.
			pushedBackEntity isExternal
				ifTrue: [self nextStartExternalEntity]]
		ifFalse: [
			aBlock
				ifNotNil: [aBlock value]]