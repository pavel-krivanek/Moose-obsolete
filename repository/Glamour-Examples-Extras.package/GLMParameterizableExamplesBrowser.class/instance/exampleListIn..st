building
exampleListIn: a
	^ a list
		title: 'Examples';
		display: [ :exampleClass | self exampleSelectorsFromClass: exampleClass ];
		sorted: [ :x :y | x < y ];
		format: [ :selector | ' ' join: ((selector piecesCutWhereCamelCase reject: [:each | each endsWith: ':']) collect: #capitalized) ]