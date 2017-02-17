*petitgui-debug
tallyIn: composite
	<gtInspectorPresentationOrder: 30>

	composite table 
		title: 'Tally';
		column: 'Parser' evaluated: [ :each | each first displayName ];
		column: 'Count' evaluated: [ :each | each second printString ];
		column: 'Percentage (%)' evaluated: [ :each | each third printString ];
		display: [ self asFrequencyTable ];
		noSelection;
		showOnly: 50