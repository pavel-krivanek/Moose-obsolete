This class is a parser with an API like SAX 2.0, with separate SAX2ContentHandler, SAX2LexicalHandler, and SAX2DeclarationHandler classes that are subclassed unlike SAX 1.0 where a single,  unified handler class is subclassed directly. Parsers can be created with #on: or other instance creation messages, and instances of the content, lexical, and declaration handlers can be injected before parsing with #contentHandler:, #lexicalHandler:, and #declarationHandler:, like this:
	(SAX2Parser on: xmlStringOrStream)
		contentHandler: MyContentHandlerClass new;
		declarationHandler: MyDeclarationHandlerClass new;
		lexicalHandler: MyLexicalHandlerClass new;
		parseDocument.

Each handler can access the SAX2Parser object with #parser and set the parsing result returned by #parseDocument with #parsingResult:.

SAXHandler is not deprecated and can still be used if you prefer the SAX 1.0 style API.