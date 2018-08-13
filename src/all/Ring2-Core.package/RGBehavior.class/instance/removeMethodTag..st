accessing - backend
removeMethodTag: aSymbol

	self backend forPackage removeMethodTag: aSymbol from: self.
	
	self localMethodsDo: [ :method | 
		method untagFrom: aSymbol ].