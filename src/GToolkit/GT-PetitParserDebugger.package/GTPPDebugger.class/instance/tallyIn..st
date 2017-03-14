building presentations
tallyIn: composite
	(self session stream stream respondsTo: #asFrequencyTable)
		ifFalse: [ ^ self ].
	composite table 
		title: 'Tally';
		column: 'Parser' evaluated: [ :each | each first displayName ];
		column: 'Count' evaluated: [ :each | each second printString ];
		column: 'Percentage (%)' evaluated: [ :each | each third printString ];
		display: [ self session stream stream asFrequencyTable ];
		noSelection;
		showOnly: 50