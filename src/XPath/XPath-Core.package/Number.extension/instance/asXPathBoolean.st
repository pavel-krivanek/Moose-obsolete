*XPath-Core-converting
asXPathBoolean
	^ (self isNaN
		or: [self isZero]) not