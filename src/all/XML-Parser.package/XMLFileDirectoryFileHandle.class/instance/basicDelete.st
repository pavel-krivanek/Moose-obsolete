basic
basicDelete
	"FileDirectory's deleteFileNamed: is used because DirectoryEntry
	doesn't understand #delete on GS"
	self fileDirectory deleteFileNamed: self path