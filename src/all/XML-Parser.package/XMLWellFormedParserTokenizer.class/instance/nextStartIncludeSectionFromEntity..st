tokenizing - dtd
nextStartIncludeSectionFromEntity: aPushedBackParameterEntity
	self
		expectNextAll: 'INCLUDE'
		startingAt: 2. "the 'I' was already read"
	streamReader skipSeparators.
	self expectNext: $[.

	"the 'INCLUDE' can be in the replacement of an entity, like
	in '<![%entity[...]]>', but after it the entity that started
	the declaration must be current"
	self topPushedBackEntity == aPushedBackParameterEntity
		ifFalse: [driver handleImproperParameterEntityNesting].

	totalOpenIncludeSections := self totalOpenIncludeSections + 1.
	aPushedBackParameterEntity
		ifNotNil: [aPushedBackParameterEntity startIncludeSection].