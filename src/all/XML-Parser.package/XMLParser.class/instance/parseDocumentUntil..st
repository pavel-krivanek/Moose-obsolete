parsing
parseDocumentUntil: aBlock
	[[self tokenizer atEnd or: [aBlock value]]
		whileFalse: [self tokenizer nextToken]]
		on: Error
		do: [:error | self handleParserError: error]