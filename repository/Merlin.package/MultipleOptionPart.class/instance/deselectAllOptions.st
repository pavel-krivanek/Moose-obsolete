accessing
deselectAllOptions

	self optionsAndModels valuesDo: [:aModel |
		aModel contents: false
		]