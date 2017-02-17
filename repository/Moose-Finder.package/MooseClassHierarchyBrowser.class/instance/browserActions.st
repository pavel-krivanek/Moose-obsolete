building
browserActions 
	browser morphicAct: [:b :model |
					| selectedClass |
					selectedClass := OBCompletionRequest new
						prompt: 'Find type';
						searchBlock: [ :string |
							model allTypes select: [:each |
								OBCompletionRequest subsequence: string matches: each mooseName caseSensitive: false ]];
						labelBlock: [ :class | class mooseName ];
"						iconBlock: [ :class | class browserIcon ];
"						signal.
					selectedClass notNil ifTrue: [ (b pane port: #typeToSelect) value: selectedClass ].
					]
			on: $/ 
			icon: MooseIcons mooseSearch 
			entitled: 'Find type'