*GT-Examples-UI
gtInspectorExamplesIn: composite
	<gtInspectorPresentationOrder: 40>
	composite list
		title: 'Examples';
		display: [ self gtExamplesContained ];
		format: [ :each | each gtDisplayString ]