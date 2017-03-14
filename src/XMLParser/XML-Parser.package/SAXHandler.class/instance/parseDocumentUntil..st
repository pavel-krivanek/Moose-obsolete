parsing
parseDocumentUntil: aBlock
	"parse the input document until aBlock is true"

	self parser parseDocumentUntil: aBlock.

	^ self parsingResult.