accessing
latePopulateContents 

	(self valueOf: self defaultValue) 
		ifNotNil: [:aSymbol |
			self selectOption: aSymbol
		]