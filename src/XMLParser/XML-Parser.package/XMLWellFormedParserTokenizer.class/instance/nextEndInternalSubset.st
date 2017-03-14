tokenizing - dtd
nextEndInternalSubset
	self hasOpenIncludeSections
		ifTrue: [^ self nextEndIncludeSection].
	"skip ]"
	streamReader next.
	self hasPushedBackEntities
		ifTrue: [self errorParameterEntityTerminatingSubset].
	streamReader skipSeparators.
	self nextEndDoctypeDeclaration.