private-maintenance
removeExamplesOfClass: aClassName for: announcement
	announcement removeExamples: (theNonMetaClassExamples removeKey: aClassName ifAbsent: [ nil ]).
	announcement removeExamples: (theMetaClassExamples removeKey: aClassName	ifAbsent: [ nil ])