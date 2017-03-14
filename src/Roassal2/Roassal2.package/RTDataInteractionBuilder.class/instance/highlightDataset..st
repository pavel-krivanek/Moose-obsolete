public - events-registering
highlightDataset: aColor
	self
		addInteraction:
			(RTDataHighlightInteraction new
				color: aColor;
				dataset: dataSet)