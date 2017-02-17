building
buildBrowser
	browser := GLMTabulator new.
	self installTitle.
	browser
		column: #titles;
		column: #example span: 4.
	browser transmit
		to: #titles;
		andShow: [ :a | self exampleListIn: a ].
	browser transmit
		to: #example;
		fromOutsidePort: #entity;
		from: #titles;
		andShow: [ :a | self exampleIn: a ].
	^ browser