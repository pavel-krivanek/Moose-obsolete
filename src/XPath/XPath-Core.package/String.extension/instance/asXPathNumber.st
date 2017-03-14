*XPath-Core-converting
asXPathNumber
	^ [(XPathNumberParser
			on: self
			for: XPathFloatNumberParserHandler new) parse]
		on: XPathSyntaxException
		do: [:error | Float nan]