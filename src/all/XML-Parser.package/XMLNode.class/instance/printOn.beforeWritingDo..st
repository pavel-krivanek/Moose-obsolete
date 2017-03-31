printing
printOn: aStream beforeWritingDo: aBlock
	"Prints XML on aStream using an XMLWriter object it creates but first
	evaluates aBlock with the XMLWriter so it can be configured before writing.

	Raises an error without XMLWriter support."

	self
		withNewXMLWriterOn: aStream
		do: [:writer |
			aBlock value: writer.
			self writeXMLOn: writer.
			writer write]