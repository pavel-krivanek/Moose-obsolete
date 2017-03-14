setup
setUp
	| stream file |
	toDelete := OrderedCollection new.
	self createDirectory: self foldersString.
	self createDirectory: self subFolderAString.
	self createDirectory: self subFolderBString.
	(self createFile: (self subFolderAString , 'emptyFile')) writeStream close.
	(self createFile: (self subFolderBString , 'emptyFile')) writeStream close.
	(self createFile: (self foldersString , 'emptyFile')) writeStream close.
	file := self createFile: (self foldersString , 'fileWith9Chars2Lines').
	stream := file writeStream.
	stream
		nextPutAll: '123456';
		cr;
		nextPutAll: '789'.
	stream close.
	file := self createFile: (self foldersString , 'fileWith9Chars4Lines2EmptyLines').
	stream := file writeStream.
	stream
		nextPutAll: '123456';cr;
		cr;
		cr;
		nextPutAll: '789'.
	stream close.
	model := MooseModel new.
	(MooseFileStructureImporter new)
		mooseModel: model;
		completeImport: (OrderedCollection with: 'folders').