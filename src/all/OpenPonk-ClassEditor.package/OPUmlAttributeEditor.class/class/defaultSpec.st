as yet unclassified
defaultSpec
	| width |
	width := 200.
	^ SpecTableLayout column
		cellPositioning: #bottom;
		listCentering: #center;
		newRow: [ :r | 
			r
				width: width;
				add: #noDefaultRadio ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				newColumn: [ :c | c add: #numberRadio ];
				newColumn: [ :c | c add: #numberInput ] width: width ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				newColumn: [ :c |  ];
				newColumn: [ :c | c add: #unitLabel ] width: 50;
				newColumn: [ :c | c add: #unitInput ] width: 150 ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				newColumn: [ :c | c add: #booleanRadio ];
				newColumn: [ :c | c add: #booleanSelect ] width: width ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				newColumn: [ :c | c add: #stringRadio ];
				newColumn: [ :c | c add: #stringInput ] width: width ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				newColumn: [ :c | c add: #collectionRadio ];
				newColumn: [ :c | c add: #collectionSelect ] width: width ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				newColumn: [ :c | c add: #codeRadio ];
				newColumn: [ :c | c add: #codeInput ] width: width ]
			height: self toolbarHeight;
		newRow: [ :r |  ];
		yourself