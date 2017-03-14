*Roassal2GT-Spotter
spotterShapesFor: aStep
	<spotterOrder: 15>
	^ aStep listProcessor
		title: 'Shapes';
		candidatesLimit: 5;
		allCandidates: [ self elements asOrderedCollection ];
		itemName: [ :each | 
			each gtDisplayString, 
			' [', each shape class name, '] - ', 
			each model gtDisplayString ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true