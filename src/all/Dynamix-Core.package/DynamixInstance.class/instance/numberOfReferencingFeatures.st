properties
numberOfReferencingFeatures
"	<property: #NORF
		longName: 'Number of referencing features'
		description: 'The number of features in which this instance is referenced'
	>"
	^self
		lookUpPropertyNamed: #NORF
		computedAs: [
			((self aliases
				select: [ :each | each creator notNil ])
					collect: [ :each | each creator trace ]) asSet size ]