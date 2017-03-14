initialize-release
setIndices: aReindexing
	
	indices := aReindexing ifNil: [MalNumberMapping new: vector size]