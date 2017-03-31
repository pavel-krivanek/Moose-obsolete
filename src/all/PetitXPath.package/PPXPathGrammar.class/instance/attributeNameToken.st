accessing
attributeNameToken
	^ ($@ asParser, ((#letter asParser / $_ asParser / $- asParser) plus)) flatten