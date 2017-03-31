printing
writeInnerXMLOn: aWriter
	self nodesDo: [:each | each writeXMLOn: aWriter]