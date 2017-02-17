*GT-Examples-UI
gtSpotterGTExamplesFor: aStep
	<spotterOrder: 100>
	aStep listProcessor
		title: 'Examples';
		filter: GTNullFilter item: [ :filter :context | 
			self examplesDo: [ :cn :s :example | filter value: example ] ]