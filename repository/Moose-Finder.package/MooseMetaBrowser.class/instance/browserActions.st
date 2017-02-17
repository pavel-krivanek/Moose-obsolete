building
browserActions
	browser
		morphicAct: [ :b | 
					MooseModel resetMeta.
					browser entity: MooseModel meta.
					browser update ]
			icon: GLMUIThemeExtraIcons glamorousRefresh
			entitled: 'Reinitialize meta descriptions';
		morphicAct: [ :b :repo | self openLintBrowserOn: repo ] entitled: 'Check metamodel rules';
		morphicAct: [ :b :repo | MooseFameView new openOn: repo ] entitled: 'View class diagram';
		morphicAct: [:b :repo |
					| request selectedClass |
					request := GLMSingleSpotterRequest new 
							searchBlock: [ :string | 
									(repo classes sorted: [:x :y | x fullName < y fullName ]) 
									select: [:each | '*', string, '*' match: each fullName] ];
							labelBlock: [ :class | class fullName ];
							iconBlock: [ :class | class new mooseIcon ].
					selectedClass := GLMSpotterRequest new 
							add: request;
							prompt: 'Find Entity';
							signal.
					selectedClass notNil ifTrue: [ (b pane port: #entityToSelect) value: selectedClass ].
					]
			on: $/ 
			icon: MooseIcons mooseSearch 
			entitled: 'Find entity'