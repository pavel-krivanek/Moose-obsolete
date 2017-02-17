private-maintenance
addExamplesOfClass: aClassName for: announcement
	(Smalltalk classNamed: aClassName asString) ifNotNil: [ :class | 
		announcement addExamples: class theNonMetaClass gtExamples ]