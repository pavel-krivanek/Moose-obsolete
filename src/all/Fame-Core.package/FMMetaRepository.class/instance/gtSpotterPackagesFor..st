as yet unclassified
gtSpotterPackagesFor: aStep
	<spotterOrder: 20>
	aStep listProcessor
		title: 'Packages';
		allCandidates: [ self packages ];
		itemName: [ :example | example fullName ];
		filter: GTFilterSubstring