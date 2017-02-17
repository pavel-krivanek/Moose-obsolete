browse
browseOn: aComposite
	aComposite title: PPBrowser label; color: Color yellow muchDarker.
	aComposite row: [ :row | row column: #class; column: #selector ].
	aComposite row: [ :row | row column: #part span: 2 ] span: 2.
	aComposite transmit 
		to: #class; 
		andShow: [ :composite | self browseClassesOn: composite ].
	aComposite transmit 
		to: #selector; 
		from: #class; 
		andShow: [ :composite | self browseSelectorsOn: composite ].
	aComposite transmit
		to: #part;
		from: #class;
		from: #selector;
		andShow: [ :composite | self browsePartsOn: composite ]