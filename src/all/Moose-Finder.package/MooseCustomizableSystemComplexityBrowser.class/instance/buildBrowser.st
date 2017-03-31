building
buildBrowser
	browser := GLMTabulator withStatusbar.
	browser title: 'Customizable System Complexity'.
	browser
		row: #painting span: 3;
		row: [ :c | c column: #height; column: #width; column: #color ].
	browser transmit
		to: #painting;
		fromOutsidePort: #entity;
		from: #height;
		from: #width;
		from: #color;
		andShow: [ :a | self complexityIn: a ].
	browser transmit
		to: #height;
		andShow: [ :a | 
					a title: 'Height metric'.
					a list display: [ :group | group value ] ].
	browser transmit
		to: #width;
		andShow: [ :a | 
					a title: 'Width metric'.
					a list display: [ :group | group value ] ].
	browser transmit
		to: #color;
		andShow: [ :a | 
					a title: 'Color metric'.
					a list display: [ :group | group value ] ].
	browser transmit
		to: #height port: #selection;
		fromOutsidePort: #heightToSelect.
	browser transmit
		to: #width port: #selection;
		fromOutsidePort: #widthToSelect.
	browser transmit
		to: #color port: #selection;
		fromOutsidePort: #colorToSelect.
	^ browser