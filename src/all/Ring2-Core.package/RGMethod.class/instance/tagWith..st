accessing - backend
tagWith: aSymbol 

	self backend forMethod tagMethod: self with: aSymbol.
	
	self parent addMethodTag: aSymbol.
	
	"todo:announce"