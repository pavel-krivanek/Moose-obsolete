extensions
gtSpotterStep: aStep example2: aGTExample
	aStep listProcessor
		title: 'Custom Extension 2 -- ' , aGTExample gtDisplayString;
		items: [ Array with: aGTExample ];
		itemName: [ :aSource | aSource gtDisplayString ];
		filter: GTFilterSubstring