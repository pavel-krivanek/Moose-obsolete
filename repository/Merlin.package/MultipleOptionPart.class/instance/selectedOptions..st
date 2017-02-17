accessing
selectedOptions: aCollectionOfOptions


	self optionsAndModels keysAndValuesDo: [:anOption :aModel |
		(aCollectionOfOptions includes: anOption)
			ifTrue: [aModel safeContents: true  ]
			ifFalse: [aModel safeContents: false  ]
		] .