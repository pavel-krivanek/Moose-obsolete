This class is a SAX2Parser that uses individual SAX2ElementHandlers to handle the #startElement*, #endElement*, and #characters: events of each element in the document. All other content events are handled by a single SAX2ContentHandler as usual.

Custom subclasses of SAX2ElementHandler can be mapped to element names, namespace URIs, and attributes using a SAX2PluggableElementHandlerFactory. Factories can be injected with #elementHandlerFactory: before parsing.
See #testParsingSampleBooks for an example.

You can have multiple factories by mapping specific SAX2ElementHandlers to specific factories using a SAX2PluggableElementHandlerFactoryMapper, which can be injected with #elementHandlerFactoryMapper: before parsing. This can be used to create a finite-state machine, with the element handler instances being the states and the mapped factories being their transitions.
See #testParsingSamplePerson for an example.