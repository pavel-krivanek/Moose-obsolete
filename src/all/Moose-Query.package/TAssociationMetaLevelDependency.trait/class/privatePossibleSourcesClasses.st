accessing
privatePossibleSourcesClasses
	"I return the classes that could be my source"

	^ self dependencyFM3PropertyDescription select: #isSource thenCollect: [ :each | each type implementingClass ]