tokenizing
nextGeneralEntityOrCharacterReferenceOnCharacterStream
	"returns the character written to 'characterStream' if any, nil otherwise"
	| pushedBackGeneralEntity result |

	pushedBackGeneralEntity := self topPushedBackEntity.
	result :=
		streamReader peek == $#
			ifTrue: [self nextCharacterReferenceOnCharacterStream]
			ifFalse: [self nextGeneralEntityReferenceOnCharacterStream].
	pushedBackGeneralEntity
		ifNotNil: [
			(self pushedBackEntities includes: pushedBackGeneralEntity)
				ifFalse: [self errorImproperGeneralEntityNesting]].

	^ result.