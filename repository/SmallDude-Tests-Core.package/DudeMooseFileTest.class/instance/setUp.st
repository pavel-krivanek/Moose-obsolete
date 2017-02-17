setUp
setUp 
	 
	| stream file detector |
	self createDirectory: self foldersString. 
	file := self createFile: (self foldersString , 'file1'). 
	stream := file writeStream. 
	stream nextPutAll: self file1. 
	stream close. 
	file := self createFile: (self foldersString , 'file2'). 
	stream := file writeStream. 
	stream nextPutAll: self file2. 
	stream close. 
	model := MooseModel new.
	(MooseFileStructureImporter new) 
		mooseModel: model; 
		completeImport: (OrderedCollection with: 'folders'). 
	detector := DudeDetector 
		new: DudeCStyleFiles 
		from: model allFiles 
		inModel: model. 
	detector getMultiplicationsWith1032