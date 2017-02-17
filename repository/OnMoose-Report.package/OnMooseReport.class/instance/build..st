private
build: spec
	spec label: 'Moose On Moose Report'.

	spec composite: 'Development patterns' meaning: 'Moose development patterns' with: [
		spec concern: OnMooseHardcodedViewRenderer new.
		spec concern: OnMooseTestClassInTestPackage new.
		spec concern: OnMooseTranscriptUsages new.
		spec concern: OnMooseUsagesOfObsoleteShowOnAPI new ].

	spec composite: 'Refactoring todos' meaning: 'Wished refactorings' with: [
		spec concern: OnMooseUsagesOfMOViewRenderer new].

	spec composite: 'Meta-model' meaning: 'Meta-model related patterns' with: [
		spec concern: OnMooseMetaModelClassesWithoutComments new.
		spec concern: OnMooseMetaPropertiesWithoutComments new ].
 
	spec composite: 'Annotations' meaning: 'Use of Fame annotations' with: [
		spec concern: OnMooseUsageOfObsoletePropertyAnnotation new.
		spec concern: OnMooseUsagesOfStringsInsteadOfSymbolsInMetaAnnotations new.
		spec concern: OnMooseUsagesOfPackagePrefixInMSEClassInMetaAnnotations new.
		spec concern: OnMooseNoSpacesInMetaDescriptions new ].

	spec composite: 'Naming conventions' meaning: 'Moose naming conventions' with: [
		spec concern: OnMooseTestClassNaming new ]