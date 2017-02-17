This is a base class for mappers to map element handler objects to element handler factories.

Requesting the factory for an element handler checks the handler's #elementHandlerFactory message first and then the mapper's own #elementHandlerFactory message which can be (and is) overridden in subclasses to return a default factory.

When a SAX2ElementParser requests the factory for a new element handler, if none is found, it will reuse (inherit) the current factory.