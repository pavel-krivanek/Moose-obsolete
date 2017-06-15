ui
gtSpotterClassesFor: aStep
	<spotterOrder: 10>
	aStep listProcessor
		title: 'Classes';
		allCandidates: [ self classes ];
		itemName: [ :class | class fullName ];
		filter: GTFilterSubstring