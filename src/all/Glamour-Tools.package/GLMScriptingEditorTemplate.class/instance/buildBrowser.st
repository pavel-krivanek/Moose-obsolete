building
buildBrowser
	browser := GLMTabulator new.
	self setTitleOf: browser.
	browser
		row: #result span: 2;
		row: [ :r | 
					r
						column: #script span: 3;
						column: #variables span: 2 ].
	browser transmit
		to: #script;
		andShow: [ :a | self scriptIn: a ].
	browser transmit
		to: #variables;
		andShow: [ :a | self variablesIn: a ].
	browser transmit
		to: #result;
		fromOutsidePort: #entity;
		from: #script;
		andShow: [ :a | self resultIn: a ].
	^ browser