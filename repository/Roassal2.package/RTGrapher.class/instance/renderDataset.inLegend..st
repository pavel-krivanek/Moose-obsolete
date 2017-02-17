hooks
renderDataset: aDataset inLegend: aLegend
	| color |
	color := aDataset shouldConnect
		ifTrue: [ aDataset lineShape color rtValue: RTElement new ]
		ifFalse: [ aDataset dotShape color rtValue: RTElement new ].
	aLegend addColor: color object: aDataset text: #label