*SmaCC_Rewrite_Engine_UI
transformationTypes
	^ ((SmaCCRewriteTransformation allSubclasses
		collect: [ :each | each type ]) asSet
		remove: nil ifAbsent: [  ];
		yourself) asSortedCollection