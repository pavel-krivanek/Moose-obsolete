This is a base class for SAX2 declaration handler classes that can be injected into SAX2Parser instances with #declarationHandler: before parsing:
	(SAX2Parser on: xmlStringOrStream)
		declarationHandler: MyDeclarationHandlerClass new;
		parseDocument.

See SAX2Parser and SAXHandler for more info.