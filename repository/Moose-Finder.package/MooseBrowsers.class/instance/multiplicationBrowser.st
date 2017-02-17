famix
multiplicationBrowser
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