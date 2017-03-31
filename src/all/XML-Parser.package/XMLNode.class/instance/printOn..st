printing
printOn: aStream
	"Uses XMLWriter if supported to print XML on aStream, uses the
	basic Object>>printOn: otherwise"

	self
		withNewXMLWriterOn: aStream
		do: [:writer |
			self writeXMLOn: writer.
			writer write]
		whenAbsent: [super printOn: aStream]