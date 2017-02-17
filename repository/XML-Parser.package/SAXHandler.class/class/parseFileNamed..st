parsing
parseFileNamed: aFileNameString
	"Parses the specified file. If aFileName is a relative path, it will be
	resolved in the context of the current working directory."

	^ (self onFileNamed: aFileNameString) parseDocument