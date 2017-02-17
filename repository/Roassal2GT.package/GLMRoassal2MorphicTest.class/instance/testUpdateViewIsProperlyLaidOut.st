tests
testUpdateViewIsProperlyLaidOut
	| browser originalView newView |
	browser := GLMTabulator new.
	browser column: #one.
	browser transmit
		to: #one;
		andShow: [ :a | a roassal2 painting: [ :view :input | 
			view addAll: (RTBox elementsOn: ($a to: input)).
			RTHorizontalLineLayout on: view elements ] ].
	window := browser openOn: $d.
	originalView := browser panes first presentations first view.
	self assert: (originalView elements detect: [ :each | each model = $b ]) center x equals: 17.5.
	browser panes first presentations first update.
	newView := browser panes first presentations first view.
	self assert: (newView elements detect: [ :each | each model = $b ]) center x equals: 17.5