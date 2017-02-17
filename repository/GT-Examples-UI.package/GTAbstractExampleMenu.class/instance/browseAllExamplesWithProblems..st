private
browseAllExamplesWithProblems: aBuilder		
	(lastItem := aBuilder item: 'Browse all examples with problems')
		parent: #gte;
		action: [ GTExampleNavigation browseExamplesWithProblems ];
		icon: Smalltalk ui icons smallError.