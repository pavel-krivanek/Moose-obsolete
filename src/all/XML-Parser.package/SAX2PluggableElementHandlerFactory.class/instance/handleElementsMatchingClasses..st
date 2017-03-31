handling
handleElementsMatchingClasses: aClassCollection
	"See the comment in #handleElementsMatchingClass:"

	elementClassMapper
		mapAllMatchingElementsToClasses: aClassCollection
		ignoringSuffixes: self ignorableClassNameSuffixes