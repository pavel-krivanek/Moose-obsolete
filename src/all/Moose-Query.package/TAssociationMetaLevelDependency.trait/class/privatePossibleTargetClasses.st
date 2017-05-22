accessing
privatePossibleTargetClasses
	"I return the classes that could be my target"

	^ self dependencyFM3PropertyDescription select: #isTarget thenCollect: [ :each | each type implementingClass ]