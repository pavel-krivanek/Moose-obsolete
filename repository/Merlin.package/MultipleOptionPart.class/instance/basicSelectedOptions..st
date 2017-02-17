accessing
basicSelectedOptions: aCollectionOfSelectedOptions


	"self optionsAndModels keysAndValuesDo: [:anOption :aModel | 
		aModel contents = (aCollectionOfSelectedOptions includes: anOption) 
			ifTrue: [
				aModel safeContents: aModel contents not
			]
		]."
	selectedOptions := aCollectionOfSelectedOptions.
	self selectedOptions: aCollectionOfSelectedOptions   