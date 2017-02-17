building
buildBrowser
	browser := GLMTabulator new.
	browser title: 'MSE metamodels explorer'.
	browser
		column: #metamodels;
		column: #details span: 4.
	self browserActions.
	browser transmit
		to: #metamodels;
		andShow: [ :a | self metamodelsOn: a ].
	browser transmit
		from: #metamodels;
		to: #details;
		andShow: [ :a | self detailsOn: a ].
	^ browser