private
updateCheckboxesNamed: aCollectionOfLabels withState: aStateSelector

	self optionsAndModels keysAndValuesDo: [:anOption :aModel |
		 (aCollectionOfLabels includes: anOption) ifTrue: [ aModel safeContents: aStateSelector  ]
		]  