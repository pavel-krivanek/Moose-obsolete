printing
printInnerXMLOn: aStream beforeWritingDo: aBlock
	self hasChildren
		ifTrue: [
			self
				withNewXMLWriterOn: aStream
				do: [:writer |
					aBlock value: writer.
					self writeInnerXMLOn: writer.
					writer write]]