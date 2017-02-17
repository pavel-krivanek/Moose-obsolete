building
buildBrowser
	browser := GLMTabulator withStatusbar.
	self browserTitle.
	browser
		column: #classes;
		column: #map span: 4.
	(browser transmit)
		to: #classes;
		andShow: [ :a | self classesIn: a ].
	(browser transmit)
		to: #map;
		fromOutsidePort: #entity;
		from: #classes port: #selection transformed: [ :group | group asMooseGroup ];
		andShow: [ :a | self mapIn: a ].
	(browser transmit)
		fromOutsidePort: #classesToSelect;
		to: #classes port: #selection.
	^ browser