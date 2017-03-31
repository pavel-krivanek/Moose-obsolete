famix
multiplicationConstellationBrowser
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