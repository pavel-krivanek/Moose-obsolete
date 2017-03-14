accessing
selectedOptions

	|tmpResult|
	tmpResult := OrderedCollection  new.
	self optionsAndModels keysAndValuesDo: [:anOption :aModel |
		(aModel contents = true) ifTrue: [tmpResult add: anOption]
		] .
	^ tmpResult