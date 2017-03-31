This class is a pluggable element handler factory with an API like XMLPluggableElementFactory. Instances can be injected into a SAX2ElementParser with #elementHandlerFactory: before parsing.

You can map combinations of element name, namespace URI, and attributes to specific element handler classes using the "handling" messages, and change the default element handler class used when there's no mapping with #elementHandlerClass:.

Instances can be saved and reused for performance and safely modified after copying.