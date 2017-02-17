private building
tallyIn: composite
	composite table 
		title: 'Tally';
		column: 'Parser' evaluated: [ :each | each first displayName ];
		column: 'Count' evaluated: [ :each | each second printString ];
		column: 'Percentage (%)' evaluated: [ :each | each third printString ];
		display: [:result :sample :stream :parser | stream asFrequencyTable ];
		noSelection;
		showOnly: 50