building
methodsIn: a
	| col |
	^ a tree
		title: 'Methods';
		display: [ :class | class methods asSortedCollection: [ :x :y | x name < y name ] ];
		format: #stubFormattedName;
		tags: [ :method | 
					col := method modifiers copy.
					method hasClassScope
						ifTrue: [ col add: 'isStatic' ].
					method kind notNil
						ifTrue: [ col add: method kind ].
					col ];
		dynamicActionsOnSelection: [ :list | list selection mooseInterestingEntity mooseFinderActions ]