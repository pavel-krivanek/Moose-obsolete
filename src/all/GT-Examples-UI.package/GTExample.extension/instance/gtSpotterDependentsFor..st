*GT-Examples-UI
gtSpotterDependentsFor: aStep
	<spotterOrder: 2>
	self hasDependents ifFalse: [ ^ self ].
	aStep listProcessor
		title: 'Example Dependents';
		items: [ self directDependents ];
		itemName: [ :example | example gtDisplayString ];
		filter: GTFilterSubstring