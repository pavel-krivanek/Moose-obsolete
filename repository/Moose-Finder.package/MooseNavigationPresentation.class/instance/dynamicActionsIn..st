private
dynamicActionsIn: list
	^ list selection mooseInterestingEntity mooseFinderActions
		add:
				(GLMGenericAction new
						action: [ :x | Smalltalk tools browser openOnClass: list rawSelection key methodClass selector: list rawSelection key selector ];
						title: 'Browse the method implementing the navigation';
						category: 'Utilities');
		yourself