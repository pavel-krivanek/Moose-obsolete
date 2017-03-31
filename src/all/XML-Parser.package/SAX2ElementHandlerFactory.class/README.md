This is a base class for element handler factories used by SAX2ElementParsers to create element handlers. Instances can be injected into a SAX2ElementParser with #elementHandlerFactory: before parsing.

This factory just uses the default handler class SAX2ElementHandler for all elements.