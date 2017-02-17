instance creation
fromURL: anUrl
	| doc |
	doc := XMLDOMParser parse: anUrl asZnUrl retrieveContents asString.
	^ self new importXMLDocument: doc