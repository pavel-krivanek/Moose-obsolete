instance creation
fromFile: aFileName
	| doc |
	doc := XMLDOMParser parseFileNamed: aFileName.
	^ self new importXMLDocument: doc