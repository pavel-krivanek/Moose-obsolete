as yet unclassified
defaultSpec2
	| width |
	width := 100.
	^ SpecTableLayout column
		newRow: [ :r | r add: #noDefaultRadio ] height: self toolbarHeight;
		newRow: [ :r | 
			r
				add: #numberRadio width: width;
				add: #numberInput ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				add: #unitLabel;
				add: #unitInput ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				add: #booleanRadio width: width;
				add: #booleanSelect ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				add: #stringRadio width: width;
				add: #stringInput ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				add: #collectionRadio width: width;
				add: #collectionSelect ]
			height: self toolbarHeight;
		newRow: [ :r | 
			r
				add: #codeRadio width: width;
				add: #codeInput ]
			height: self toolbarHeight;
		newRow: [ :r |  ];
		yourself