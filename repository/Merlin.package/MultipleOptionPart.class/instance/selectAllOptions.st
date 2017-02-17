accessing
selectAllOptions

	self optionsAndModels valuesDo: [:aModel |
		aModel contents: true
		]