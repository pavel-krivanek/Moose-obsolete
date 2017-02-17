*petitgui
sampleIn: composite

	(composite text)
		title: 'Sample';
		display: [:res | res findStream contents ifNil: [''] ];
		allowNil.