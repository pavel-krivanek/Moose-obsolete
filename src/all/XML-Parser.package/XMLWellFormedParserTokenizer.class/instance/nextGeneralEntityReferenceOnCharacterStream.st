tokenizing
nextGeneralEntityReferenceOnCharacterStream
	"returns the (first) character written to 'characterStream' if any,
	nil otherwise"
	| name |

	name := self nextEntityName.
	self expectNext: $;.
	PredefinedEntities
		at: name
		ifPresent: [:character |
			driver replacesContentEntityReferences
				ifFalse: [^ self nextUnreplacedGeneralEntityOnCharacterStreamNamed: name].
			characterStream nextPut: character.
			^ character].

	(driver handleGeneralEntityReference: name)
		ifNil: [
			(driver replacesContentEntityReferences not
				or: [driver preservesUndeclaredEntityReferences])
				ifTrue: [^ self nextUnreplacedGeneralEntityOnCharacterStreamNamed: name].
			driver handleUnreplacedGeneralEntityReference: name]
		ifNotNil: [:entity |
			entity isUnparsed
				ifTrue: [self errorReferenceToUnparsedGeneralEntity: entity].
			driver replacesContentEntityReferences
				ifFalse: [^ self nextUnreplacedGeneralEntityOnCharacterStreamNamed: name].
			self constructReplacementForGeneralEntity: entity].
	^ nil.