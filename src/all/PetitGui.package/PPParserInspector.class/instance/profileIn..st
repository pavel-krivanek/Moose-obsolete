private building
profileIn: composite
	composite table 
		title: 'Profile';
		column: 'Parser' evaluated: [ :each | each first displayName ];
		column: 'Time (ms)' evaluated: [ :each | each second printString ];
		column: 'Percentage (%)' evaluated: [ :each | each third printString ];
		display: [ :result :sample :stream :parser  | stream asFrequencyTable ];
		noSelection;
		showOnly: 50
