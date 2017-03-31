testing-parsing
testParseSimpleAttributeWithSingleQuote
	self assertParseInvariant: '<?xml version="1.0" encoding="UTF-8"?><schema foo=''bar''></schema>' 