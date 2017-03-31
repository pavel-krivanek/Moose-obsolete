initialize-release
model: aMooseModel
	| allModelMethods allModelClasses |
	MooseCustomTask
		runWithProgress: [ :bar | 
			allModelMethods := aMooseModel allMethods reject: [ :each | each isStub ].
			bar increment.
			allModelClasses := aMooseModel allModelTypes reject: #isAnonymousClass.
			bar increment.
			nop := aMooseModel allModelPackages size.
			bar increment.
			noc := allModelClasses size.
			bar increment.
			nom := allModelMethods size.
			bar increment.
			loc := allModelMethods sumNumbers: #numberOfLinesOfCode.
			bar increment.
			cyclo := allModelMethods sumNumbers: #cyclomaticComplexity.
			bar increment.
			fanout := allModelClasses sumNumbers: #fanOut.
			bar increment.
			calls := allModelMethods sumNumbers: [ :each | each invokedMethods size ].
			bar increment.
			andc := (allModelClasses sumNumbers: [ :class | class directSubclasses size ]) / noc.
			bar increment.
			ahh := allModelClasses average: #hierarchyNestingLevel.
			bar increment ]
		description: 'OverviewPyramid - computing metrics'
		length: 11