tokenizing
nextContentMarkupToken
	self topPushedBackEntity
		ifNil: [
			streamReader peek == $?
				ifTrue: [^ self nextPI].
			streamReader peek == $!
				ifTrue: [
					streamReader next.
					streamReader peek == $-
						ifTrue: [^ self nextComment].
					elementNester isInElement
						ifTrue: [^ self nextCDataSection].
					self errorUnexpectedMarkupDeclarationInContent].
			self nextTag]
		ifNotNil: [:pushedBackGeneralEntity |
			self nextContentMarkupTokenFromEntity: pushedBackGeneralEntity].