This is a base class for SAX2 content handler classes that can be injected into SAX2Parser instances with #contentHandler: before parsing:
	(SAX2Parser on: xmlStringOrStream)
		contentHandler: MyContentHandlerClass new;
		parseDocument.

See SAX2Parser and SAXHandler for more info.