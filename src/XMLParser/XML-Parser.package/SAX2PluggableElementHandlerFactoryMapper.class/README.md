This class is a pluggable mapper to map element handler objects to element handler factories.

Requesting the factory for an element handler checks for a mapping set with  #mapElementHandlerClass: toFactory:, then the handler's  #elementHandlerFactory message, then the mapper's own #elementHandlerFactory message, which returns a default factory (unlike in the base class) which can be changed with #elementHandlerFactory:.

When a SAX2ElementParser requests the factory for a new element handler, if none is found, it will reuse (inherit) the current factory, but this won't happen unless the default factory is cleared by setting #elementHandlerFactory: to nil.

Instances can be saved and reused for performance and safely modified after copying.