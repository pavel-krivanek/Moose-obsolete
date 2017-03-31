accessing
complexityIn: a
	^ a roassal2
		title: 'Complexity';
		useExplicitNotNil;
		initializeView: [ RTMondrian new ];
		painting: [ :view :category :class :selector | 
					view nodeShape
						height: [ :model | model linesOfCode min: 50 max: 5 ];
						width: [ :model | model instVarNames size + 5 ];
						fillColor: [ :model | 
									model = class
										ifTrue: [ Color red ]
										ifFalse: [ Color white ] ].
					view
						nodes:
							(((Smalltalk organization listAtCategoryNamed: category) collect: [ :each | Smalltalk classNamed: each ])
								reject: [ :each | each isTrait ]).
					view edges connectFrom: [ :each | each superclass ].
					view treeLayout ];
		when: [ :category :class :selector | category notNil ]