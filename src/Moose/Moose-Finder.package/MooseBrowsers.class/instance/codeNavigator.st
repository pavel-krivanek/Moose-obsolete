famix
codeNavigator
	| browser col |
	browser := GLMTabulator new.
	browser column: #namespaces; column: #classes; column: #methods.
	browser transmit to: #namespaces; andShow: [:a |
			a tree
				display: [:model | (model allNamespaces select: #isRoot) sorted: [:x :y | x name < y name]];				
				children: [:namespace | namespace childScopes asSortedCollection: [:x :y | x name < y name]];
				format: [:namespace | namespace stubFormattedName];
				dynamicActionsOnSelection: [ :list | list selection mooseInterestingEntity mooseFinderActions ]
		].
	browser transmit to: #classes;
		from: #namespaces;
		andShow: [ :a | 
			a tree
				display: [:namespace | namespace classes asSortedCollection: [:x :y | x name < y name]];		
				format: [:class | class stubFormattedName];
				dynamicActionsOnSelection: [ :list | list selection mooseInterestingEntity mooseFinderActions ]].
	browser transmit to: #methods;
		from: #classes;
		andShow: [ :a |
			a tree
				display: [:class | class methods asSortedCollection: [:x :y | x name < y name]];
				format: #stubFormattedName;
				tags: [:method |
					col := method modifiers copy. 
					method hasClassScope ifTrue: [col add: 'isStatic'].
					method kind notNil ifTrue: [col add: method kind].
					col ];
				dynamicActionsOnSelection: [ :list | list selection mooseInterestingEntity mooseFinderActions ]].
	browser transmit toOutsidePort: #namespace; from: #namespaces.
	browser transmit toOutsidePort: #class; from: #classes.
	browser transmit toOutsidePort: #method; from: #methods.
	browser transmit to: #namespaces port: #selection; fromOutsidePort: #namespaceToSelect.
	browser transmit to: #classes port: #selection; fromOutsidePort: #classToSelect.
	browser transmit to: #methods port: #selection; fromOutsidePort: #methodToSelect.
	^ browser