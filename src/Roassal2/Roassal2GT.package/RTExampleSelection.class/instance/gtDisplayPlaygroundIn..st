ui
gtDisplayPlaygroundIn: composite
	<gtInspectorPresentationOrder: 0>
	^ composite pharoScript
		title: 'Playground';
		format: [ self playgroundSourceCode ];
		act: [ :text :page |
				text selectionInterval: (1 to: text text size).
				text evaluateSelectionAndDo: [ :anObject | text selection: anObject ] ]
			icon: GLMUIThemeExtraIcons glamorousGo
			on: $g
			entitled: 'Do it all and go (g)'
		