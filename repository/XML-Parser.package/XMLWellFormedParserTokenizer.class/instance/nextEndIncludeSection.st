tokenizing - dtd
nextEndIncludeSection
	"skip ]"
	streamReader next.
	self
		expectNext: $];
		expectTerminator.

	totalOpenIncludeSections := self totalOpenIncludeSections - 1.
	self topPushedBackEntity
		ifNotNil: [:pushedBackParameterEntity |
			pushedBackParameterEntity endIncludeSection.
			pushedBackParameterEntity totalOpenIncludeSections >= 0
				ifFalse: [driver handleImproperParameterEntityNesting]].