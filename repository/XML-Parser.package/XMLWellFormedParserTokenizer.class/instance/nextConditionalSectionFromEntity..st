tokenizing - dtd
nextConditionalSectionFromEntity: aPushedBackParameterEntity
	"skip ["
	streamReader next.
	self
		skipSeparatorsInDeclaration;
		expectNext: $I.
	streamReader peek == $N
		ifTrue: [self nextStartIncludeSectionFromEntity: aPushedBackParameterEntity]
		ifFalse: [self nextIgnoreSectionFromEntity: aPushedBackParameterEntity].