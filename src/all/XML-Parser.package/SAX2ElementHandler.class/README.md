This is a base class for SAX2 element handlers to be used with SAX2ElementParsers.

SAX2ElementParsers use individual SAX2ElementHandlers to handle the #startElement*, #endElement*, and #characters: events of each element in the document.

The parser can be accessed with #parser, and the parent element handler (if any) can be accessed with #parent.