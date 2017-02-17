*GT-InspectorExtensions-CoreRoassal
gtInspectorMessageTreeIn: composite
	<gtInspectorPresentationOrder: 40>
	| methods normalizer |
	methods := self withDeepCollect: #children.
	normalizer := RTNColorLinearNormalizer 
						inContext: methods 
						withCommand: #tally 
						lowColor: Color gray 
						highColor: Color red.
	^ (composite tree)
		title: 'Tree';
		children: [ :each | each children ];
		"rootsExpanded;"
		format: [ :each | 
			Text 
				string: each gtDisplayString
				attributes: { TextColor color: (normalizer rtValue: each)}];
		when: [ self children notEmpty ];
		filterOn: [ :text :each | each gtDisplayString includesSubstring: text caseSensitive: false ];
		morphicSelectionAct: [ :list | list selection method browse ]
			icon: GLMUIThemeExtraIcons glamorousBrowse
			on: $b
			entitled: 'Browse (b)'
		