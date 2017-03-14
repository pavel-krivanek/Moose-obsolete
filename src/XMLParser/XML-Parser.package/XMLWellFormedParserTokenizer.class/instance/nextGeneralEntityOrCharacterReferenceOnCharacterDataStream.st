tokenizing
nextGeneralEntityOrCharacterReferenceOnCharacterDataStream
	"returns the character written to 'characterDataStream' if any, nil otherwise"
	| pushedBackGeneralEntity result |

	pushedBackGeneralEntity := self topPushedBackEntity.
	result :=
		streamReader peek == $#
			ifTrue: [self nextCharacterReferenceOnCharacterDataStream]
			ifFalse: [self nextGeneralEntityReferenceOnCharacterDataStream].
	pushedBackGeneralEntity
		ifNotNil: [
			(self pushedBackEntities includes: pushedBackGeneralEntity)
				ifFalse: [self errorImproperGeneralEntityNesting]].

	^ result.