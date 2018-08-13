trait transormation
subjectFor: anRGTraitTransformation

	^ (anRGTraitTransformation propertyNamed: #realObject ifAbsent: [ self error: 'You can use only trait transformations generated directly by this backend' ]) subject asRingMinimalDefinitionIn: anRGTraitTransformation environment