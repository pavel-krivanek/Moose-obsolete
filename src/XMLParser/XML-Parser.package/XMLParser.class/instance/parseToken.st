parsing
parseToken
	^ [self tokenizer nextToken]
		on: Error
		do: [:error | self handleParserError: error]