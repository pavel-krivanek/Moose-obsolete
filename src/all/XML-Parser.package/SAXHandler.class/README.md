This class is an event-handling XML parser. To use it, subclass it and override event handlers in the "handling" categories, such as #startDocument, #startElement:attributes:, #endElement:, and #endDocument.

By default XML namespace support and validation are enabled but not external entity resolution.

Once the subclass is ready, use the class "parsing" messages to parse XML:
	result := SAXHandlerSubclass parse: xmlStringOrStream.
	resultFromURL := SAXHandlerSubclass parseURL: xmlURLString.
	resultFromFile := SAXHandlerSubclass parseFileNamed: xmlFileName.

The class "instance creation" messages create and return new parsers on the input so they can be configured with messages in the  "configuring" category before parsing:
	result :=
		(SAXHandlerSubclass on: xmlStringOrStream)
			isValidating: true;
			resolvesExternalEntities: true;
			parseDocument.

#interruptParsing can be sent from within a handler to stop parsing, and there is also #parseDocumentWhile: and #parseDocumentUntil: 
	result :=
		(SAXHandlerSubclass on: xmlStringOrStream)
			parseDocumentWhile: [self shouldKeepParsing].

To parse incrementally, send #parser to an instance to get the underlying XMLParser object and send it #parseToken repeatedly:
	(handler := SAXHandlerSubclass on: xmlStringOrStream)
		isValidating: false; 
		preservesUndeclaredEntityReferences: true.
	parser := handler parser.

	"Only parse the first 10 tokens:"
	10 timesRepeat: [parser parseToken].

There are security limits on input you can remove with #removeLimits or change with messages like #documentReadLimit:
	result :=
		(SAXHandlerSubclass on: xmlStringOrStream)
			removeLimits;
			documentReadLimit: newReadLimit;
			maxEntityReplacementDepth: newMaxEntityDepth;
			parseDocument.
		
#optimizeForLargeDocuments can be used when parsing large documents if you don't care for validating or namespaces.