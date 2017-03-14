extensions
gtSpotterStep: aStep example3: aGTExample
	aStep listProcessor
		title: 'Custom Extension 3 -- ' , aGTExample gtDisplayString;
		items: [ Array with: aGTExample ];
		itemName: [ :aSource | aSource gtDisplayString ];
		filter: GTFilterSubstring