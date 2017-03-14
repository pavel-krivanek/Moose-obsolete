building
buildBrowser
	browser := GLMTabulator new.
	browser title: [ :concern | concern label ].
	browser
		column: [ :c | c row: #list span: 4; row: #explanation ];
		column: #results span: 4.
	browser transmit
		to: #list;
		andShow: [ :a | self concernListIn: a ].
	browser transmit
		to: #results;
		from: #list;
		andShow: [ :a | self concernResultsIn: a].
	browser transmit
		to: #explanation;
		from: #list;
		andShow: [ :a | a text display: #explanation ].
	^ browser