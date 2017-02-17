This is a base class for SAX2 lexical handler classes that can be injected into SAX2Parser instances with #lexicalHandler: before parsing:
	(SAX2Parser on: xmlStringOrStream)
		lexicalHandler: MyLexicalHandlerClass new;
		parseDocument.

See SAX2Parser and SAXHandler for more info.