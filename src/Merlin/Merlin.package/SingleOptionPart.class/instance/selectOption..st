accessing
selectOption: anOption

	self optionsAndModels keysAndValuesDo: [:tmpOption :aModel |
		tmpOption = anOption 
			ifTrue: [
				aModel safeContents: true.
				self selectedOption: anOption  
				]
			ifFalse: [
				aModel safeContents: false
				] 
		]  