tests
testAllMissingExternalExamples
	<toBeDeprecated: #gtExample:>
	self assertIncludesPackages: nil
		excludedPackages: { 'Glamour-'. 'GT-'. 'Moose-'. 'Petit'. 'Renraku'. 'Slot'. 'Opal'. 'Roassal' }
		ignoredClasses: {
			Behavior. "Has abstract methods"
		 }
		pragmas: #( #spotterOrder: #gtInspectorPresentationOrder: )
		examples: #( #gtExample #gtExample: )
		description: 'All missing external examples'