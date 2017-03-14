private
withNewXMLWriterOn: aStream do: aOneArgBlock
	^ self
		withNewXMLWriterOn: aStream
		do: aOneArgBlock
		whenAbsent: [self errorXMLWritingUnsupported]