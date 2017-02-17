testing-parsing
testParseCommentWithXml
	self assertParseInvariant: '<?xml version="1.0" encoding="UTF-8"?><schema><!-- <foo></foo> --></schema>' 