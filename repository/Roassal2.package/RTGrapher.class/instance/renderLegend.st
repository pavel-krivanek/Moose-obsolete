hooks
renderLegend
	self legend view: self view.
	datasets
		do: [ :each | self renderDataset: each inLegend: self legend ].
	self legend build.
	self inferLegendInteractions