*Roassal2GT-Spotter
spotterShapesModelsFor: aStep
	<spotterOrder: 15>
	^ aStep listProcessor
		title: 'Model objects';
		candidatesLimit: 5;
		allCandidates: [ ((self elements collectAsSet: #model) reject: #isNil) asOrderedCollection ];
		itemName: [ :each | each gtDisplayString ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true