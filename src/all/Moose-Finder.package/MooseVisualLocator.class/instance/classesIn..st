building
classesIn: a
	"Ideally, we should implement it like below, but somehow the original selection is not set properly
	a dynamic 
		display: [:group |
			| composite | 
			composite := GLMCompositePresentation new.
			group mooseFinderListIn: composite.			
			group mooseFinderEvaluatorIn: composite.
			composite ]"

	(a list)
		icon: #mooseIcon;
		title: [ :each | each mooseInterestingEntity size asString , ' items' ];
		titleIcon: MooseIcons mooseList;
		beMultiple;
		searchOn: [ :text :each | Smalltalk compiler evaluate: ' | entity each | each := self. entity := each.' , text for: each logged: false ];
		showOnly: 50;
		format: #mooseDisplayString;
		dynamicActionsOnSelection: [ :list | list selection mooseInterestingEntity mooseFinderActions ];
		dynamicActions: [ :list | list entity mooseInterestingEntity mooseFinderActions ].
	^ a pharoScript
		display: [ :entity | 'self' ];
		title: 'Evaluator';
		titleIcon: MooseIcons mooseEvaluator;
		selectionPopulate: #selection
			on: $o
			entitled: 'Open script (o)'
			with: [ :text :entity | Smalltalk compiler evaluate: text selectedText for: entity mooseInterestingEntity logged: false ];
		selectionAct: [ :text :entity | (Smalltalk compiler evaluate: text selectedText for: entity mooseInterestingEntity logged: false) inspect ]
			on: $/
			entitled: 'Inspect script (/)'