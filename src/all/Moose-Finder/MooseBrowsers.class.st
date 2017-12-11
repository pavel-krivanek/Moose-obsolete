"
This class holds a collection of browsers useable on Moose objects.
"
Class {
	#name : #MooseBrowsers,
	#superclass : #Object,
	#category : #'Moose-Finder'
}

{ #category : #famix }
MooseBrowsers >> codeBrowser [
	| browser |
	browser := GLMTabulator new.
	browser title: 'Moose Code Browser'.
	browser row: #navigation; row: #details.
	browser transmit to: #navigation; andShow: [ :a |
		a custom: MooseCodeNavigator new browser ].
	browser transmit to: #details; from: #navigation port: #class; from: #navigation port: #method; andShow: [ :a |
		a text
			title: 'Source';
			display: [:cls | cls formattedSourceText];
			useExplicitNotNil;
			when: [:cls :method | cls notNil and: [method isNil] ].
		a text
			title: 'Source';
			display: [:cls :method | method formattedSourceText]	  ].
	browser transmit toOutsidePort: #namespace; from: #navigation port: #namespace.
	browser transmit toOutsidePort: #class; from: #navigation port: #class.
	browser transmit toOutsidePort: #method; from: #navigation port: #method.
	browser transmit to: #navigation port: #namespaceToSelect; fromOutsidePort: #namespaceToSelect.
	browser transmit to: #navigation port: #classToSelect; fromOutsidePort: #classToSelect.
	browser transmit to: #navigation port: #methodToSelect; fromOutsidePort: #methodToSelect.
	^ browser
]

{ #category : #famix }
MooseBrowsers >> codeNavigator [
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
]

{ #category : #famix }
MooseBrowsers >> duplicationBrowser [
	| browser |
	browser := GLMTabulator new.
	browser title: 'Duplication Browser'.
	browser row: #duplications; row: #diff span: 2.
	browser transmit to: #duplications; andShow: [ :a | a list].
	browser transmit to: #diff; from: #duplications; andShow: [ :a |
		a diff display: [:dup | 
			Array with: dup referenceText with: dup duplicateText ]].
	^ browser
]

{ #category : #famix }
MooseBrowsers >> multiplicationBrowser [
	"self new multiplicationBrowser openOn: MooseModel root allModels first"

	| diffBrowser browser |
	diffBrowser := GLMTabulator new.
	diffBrowser title: 'Duplications'.
	diffBrowser row: #duplications; row: #diff span: 2.
	diffBrowser transmit to: #duplications; andShow: [:a | a list display: #duplications].
	diffBrowser transmit to: #diff; from: #duplications; andShow: [:a |
		a diff display: [:dup | 
			Array with: dup referenceText with: dup duplicateText ]].
	browser := GLMTabulator new.
	browser row: #map; row: #details.
	browser transmit to: #map; andShow: [:a |
		a roassal 
			painting: [:view :m | 
				| multipliedClasses dudeMultiplicationGroup |
				dudeMultiplicationGroup := m allMultiplications.
				multipliedClasses := (dudeMultiplicationGroup flatCollect: #multiplyingEntities) asSet.
				view interaction popupText: [:each | each multiplyingEntities collect: #name ].
				view shape rectangle size: 1.
				view nodes: dudeMultiplicationGroup.
				view shape rectangle 
					fillColor: [:each |
						| color |
						color := Color lightGray.
						color ];
					size: 10.
				view nodes: multipliedClasses.
				view edges: dudeMultiplicationGroup from: #yourself toAll: #multiplyingEntities.
				"view graphvizLayout neato."
				view forceBasedLayout
				] ].
	browser transmit from: #map; to: #details; andShow: [ :a |
		a custom: diffBrowser.
		a list 
			title: 'Entities involved in the multiplication';
			display: [:each | each multiplyingEntities asMooseGroup ];
			format: #mooseName;
			when: [:each | each isKindOf: DudeMultiplication ]].
	^ browser
]

{ #category : #famix }
MooseBrowsers >> multiplicationConstellationBrowser [
	| diffBrowser browser |
	diffBrowser := GLMTabulator new.
	diffBrowser title: 'Duplications'.
	diffBrowser row: #duplications; row: #diff span: 2.
	diffBrowser transmit to: #duplications; andShow: [:a | 
		a list display: #duplications].
	diffBrowser transmit to: #diff; from: #duplications; andShow: [:a |
		a diff display: [:dup | 
			Array with: dup referenceText with: dup duplicateText ]].
	browser := GLMTabulator new.
	browser title: 'Multiplication Constellation Browser'.
	browser row: #map; row: #details.
	browser transmit to: #map; andShow: [:a |
		a roassal 
			painting: [:view :multiplications | 
				multiplications viewConstellationOn: view ] ].
	browser transmit from: #map; to: #details; andShow: [ :a |
		(a custom: diffBrowser)
			when: [:each | each isKindOf: DudeMultiplication ].
		a list 
			title: 'Entities involved in the multiplication';
			display: [:each | each multiplyingEntities asMooseGroup ];
			format: #mooseName;
			when: [:each | each isKindOf: DudeMultiplication ]].
	^ browser
]
