*petitgui
sampleIn: composite

	(composite text)
		title: 'Sample';
		display: [:res | res findStreamContents ];
		allowNil.