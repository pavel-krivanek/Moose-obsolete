building
methodsIn: a
	^ a list
		title: 'Methods';
		display: [ :type | type methods ];
		format: #name;
		sorted: [ :m1 :m2 | m1 name < m2 name ]