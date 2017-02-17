tokenizing
nextGeneralEntityReferenceOnCharacterDataStream
	"returns the (first) character written to 'characterDataStream' if any, nil otherwise"
	| name |

	name := self nextName.
	self expectNext: $;.
	PredefinedEntities
		at: name
		ifPresent: [:character |
			driver replacesContentEntityReferences
				ifFalse: [^ self nextUnreplacedGeneralEntityOnCharacterDataStreamNamed: name].
			characterDataStream nextPut: character.
			^ character].

	(driver handleGeneralEntityReference: name)
		ifNil: [
			(driver replacesContentEntityReferences not
				or: [driver preservesUndeclaredEntityReferences])
				ifTrue: [^ self nextUnreplacedGeneralEntityOnCharacterDataStreamNamed: name].
			driver handleUnreplacedGeneralEntityReference: name]
		ifNotNil: [:entity |
			entity isUnparsed
				ifTrue: [self errorReferenceToUnparsedGeneralEntity: entity].
			driver replacesContentEntityReferences
				ifFalse: [^ self nextUnreplacedGeneralEntityOnCharacterDataStreamNamed: name].
			self constructReplacementForGeneralEntity: entity].
	^ nil.