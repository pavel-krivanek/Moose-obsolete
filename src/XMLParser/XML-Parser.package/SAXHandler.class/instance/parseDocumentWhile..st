parsing
parseDocumentWhile: aBlock
	"parse the input document while aBlock is true"

	self parser parseDocumentWhile: aBlock.

	^ self parsingResult.