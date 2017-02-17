*GT-Examples-UI
gtSpotterGTExampleSubjectsFor: aStep
	<spotterOrder: 101>
	aStep listProcessor
		title: 'Example Subject';
		items: [ { self asGTExampleSubject } ];
		itemName: [ :subject | subject gtDisplayString ];
		filter: GTFilterSubstring