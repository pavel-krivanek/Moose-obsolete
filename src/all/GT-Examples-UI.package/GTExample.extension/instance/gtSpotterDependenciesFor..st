*GT-Examples-UI
gtSpotterDependenciesFor: aStep
	<spotterOrder: 1>
	self hasDependencies ifFalse: [ ^ self ].
	aStep listProcessor
		title: 'Example Dependencies';
		items: [ self dependenciesOrArguments ];
		itemName: [ :example | example gtDisplayString ];
		filter: GTFilterSubstring