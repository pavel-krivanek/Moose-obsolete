building
mapIn: a
	^ a roassal2
		title: [ :allClasses :selectedClasses | 'System Complexity with ' , selectedClasses size asString , ' selected classes' ];
		initializeView: [ RTMondrian new ];
		dynamicActions: [ :mondrian | mondrian entity second mooseInterestingEntity mooseFinderActions ];
		painting: [ :view :allClasses :selectedClasses | 
					(allClasses reject: [ :each | each isInterface ])
						viewSimpleSystemComplexityWithSelection: selectedClasses
						height: #numberOfMethods
						width: #numberOfAttributes
						color: #numberOfLinesOfCode
						on: view ]