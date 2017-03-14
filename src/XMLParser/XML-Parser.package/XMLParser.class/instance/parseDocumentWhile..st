parsing
parseDocumentWhile: aBlock
	[[self tokenizer atEnd not and: [aBlock value]]
		whileTrue: [self tokenizer nextToken]]
		on: Error
		do: [:error | self handleParserError: error]