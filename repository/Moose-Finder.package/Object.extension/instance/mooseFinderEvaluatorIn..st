*Moose-Finder
mooseFinderEvaluatorIn: composite
	<moosePresentationOrder: 100>
	composite pharoScript
		display: [ GTSnippets snippetAt: self mooseInterestingEntity class ];
		title: 'Evaluator';
		titleIcon: MooseIcons mooseEvaluator;
		doItReceiver: [ self mooseInterestingEntity ];
		installDefaultSelectionActions;
		selectionPopulate: #selection
			on: $g
			entitled: 'Do it and go'
			with: [ :text :entity1 | 
				text selectLine.
				GTSnippets snippetAt: self mooseInterestingEntity class put: text text asString.
				Smalltalk compiler evaluate: text selectedText for: self mooseInterestingEntity logged: false ]