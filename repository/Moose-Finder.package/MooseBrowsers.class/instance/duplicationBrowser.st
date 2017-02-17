famix
duplicationBrowser
	| browser |
	browser := GLMTabulator new.
	browser title: 'Duplication Browser'.
	browser row: #duplications; row: #diff span: 2.
	browser transmit to: #duplications; andShow: [ :a | a list].
	browser transmit to: #diff; from: #duplications; andShow: [ :a |
		a diff display: [:dup | 
			Array with: dup referenceText with: dup duplicateText ]].
	^ browser