computing possible parts
possibleContainerTypes

	"return the list of string to be displayed as possible part types, (when basing the wizard on elements)"
	"| allMetaClasses result |
	result := OrderedCollection new.
	allMetaClasses := MooseModel meta elements select: [:each | each isFM3Class].
	allMetaClasses do: [:aFM3Class |
		|possibleAttributes|
		(self mooseModel includesElementsOfType: aFM3Class implementingClass) ifTrue: [
			possibleAttributes := aFM3Class allAttributesReturningType: self groupMetaClass inModel: self mooseModel. 
			possibleAttributes do: [:each | 
				(self mooseModel includesElementsOfType: aFM3Class implementingClass)
				ifTrue: [
					each opposite ifNotNil: [
						result add: each opposite
						].
					]. 
				].
			].
		].
	^ result asSet asOrderedCollection."
	
	^ self groupMetaClass allComplexAttributes select: [:aFM3Property |
		aFM3Property isMultivalued not
		"aFM3Property hasOpposite and: [aFM3Property opposite isMultivalued]"
		].