extensions
gtSpotterStep: aStep example: aGTExample
	aStep listProcessor
		title: 'Custom Extension 1 -- ' , aGTExample gtDisplayString;
		items: [ Array with: aGTExample ];
		itemName: [ :aSource | aSource gtDisplayString ];
		filter: GTFilterSubstring