tokenizing
nextContentMarkupTokenFromEntity: aPushedBackGeneralEntity
	streamReader peek == $?
		ifTrue: [self nextPI]
		ifFalse: [
			streamReader peek == $!
				ifTrue: [
					streamReader next.
					streamReader peek == $-
						ifTrue: [self nextComment]
						ifFalse: [
							elementNester isInElement
								ifTrue: [self nextCDataSection]
								ifFalse: [
									self errorUnexpectedMarkupDeclarationInContent]]]
				ifFalse: [| oldTotalOpenElements newTotalOpenElements |
					oldTotalOpenElements := elementNester totalOpenElements.
					self nextTag.
					newTotalOpenElements := elementNester totalOpenElements.
					newTotalOpenElements < oldTotalOpenElements
						ifTrue: [
							aPushedBackGeneralEntity endElement.
							aPushedBackGeneralEntity totalOpenElements >= 0
								ifFalse: [self errorImproperGeneralEntityNesting]]
						ifFalse: [
							newTotalOpenElements > oldTotalOpenElements
								ifTrue: [aPushedBackGeneralEntity startElement]]]].

	self topPushedBackEntity == aPushedBackGeneralEntity
		ifFalse: [self errorImproperGeneralEntityNesting].