accessing-meta
containerOf: element 
	| meta property |
	meta := self metaDescriptionOf: element.
	meta ifNotNil: [
		property := meta ownerAttribute.
		property ifNil: [ ^ nil ].
		^ self 
			get: property
			element: element ].
	^ nil