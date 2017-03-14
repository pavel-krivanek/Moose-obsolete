accessing
directoryEntry
	"a bug on Squeak (but not GS) with the handling of dot relative paths
	like './file.xml' requires fully qualifying the path before creating
	the DirectoryEntry"
	^ self fileDirectory directoryEntryFor:
		(self fileDirectory fullPathFor: self path)