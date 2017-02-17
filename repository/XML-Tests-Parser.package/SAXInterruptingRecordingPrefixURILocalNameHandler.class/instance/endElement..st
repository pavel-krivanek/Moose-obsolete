handling - content
endElement: aQualifiedName
	super endElement: aQualifiedName.

	self interruptOn = #endElement:
		ifTrue: [self interruptParsing].