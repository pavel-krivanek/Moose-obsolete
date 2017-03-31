parsing
parseDocument
	"parser the entire input document"

	self parser parseDocument.

	^ self parsingResult.