building
buildBrowser
	browser := GLMTabulator new title: 'Hierarchies'.
	self browserActions.
	browser
		row: [ :r | 
					r
						column: #types;
						column: #methods ];
		row: #details.
	browser transmit
		to: #types;
		andShow: [ :a | self typesIn: a ].
	browser transmit
		from: #types;
		to: #methods;
		andShow: [ :a | self methodsIn: a ].
	browser transmit
		from: #types;
		from: #methods;
		to: #details;
		andShow: [ :a | self detailsIn: a ].
	browser transmit
		to: #types port: #selection;
		fromOutsidePort: #typeToSelect.
	^ browser