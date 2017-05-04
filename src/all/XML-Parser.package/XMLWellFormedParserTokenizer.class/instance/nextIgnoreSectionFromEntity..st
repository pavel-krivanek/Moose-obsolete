tokenizing - dtd
nextIgnoreSectionFromEntity: aPushedBackParameterEntity
	| openSections firstChar secondChar nextChar |

	self
		expectNextAll: 'IGNORE'
		startingAt: 2. "the 'I' was already read"
	streamReader skipSeparators.
	self expectNext: $[.

	"the 'IGNORE' can be in the replacement of an entity, like
	in '<![%entity[...]]>', but after it the entity that started
	the declaration must be current"
	self topPushedBackEntity == aPushedBackParameterEntity
		ifFalse: [driver handleImproperParameterEntityNesting].

	"From the spec:
	The contents of an ignored conditional section MUST be parsed by
	ignoring all characters after the '[' following the keyword, except
	conditional section starts '<![' and ends ']]>', until the matching
	conditional section end is found. Parameter entity references MUST
	NOT be recognized in this process."
	openSections := 1.
	[openSections == 0
		or: [(nextChar := streamReader next) == nil]]
		whileFalse: [
			nextChar == $>
				ifTrue: [
					(secondChar == $]
						and: [firstChar == $]])
						ifTrue: [openSections := openSections - 1]]
				ifFalse: [
					nextChar == $[
						ifTrue: [
							(secondChar == $!
								and: [firstChar == $<])
								ifTrue: [openSections := openSections + 1]]].
			firstChar := secondChar.
			secondChar := nextChar].

	openSections == 0
		ifFalse: [self errorUnterminatedIgnoreSections].