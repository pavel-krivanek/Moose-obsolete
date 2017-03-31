parsing
parseDocument
	[[self tokenizer atEnd]
		whileFalse: [self tokenizer nextToken]]
		on: Error
		do: [:error | self handleParserError: error]