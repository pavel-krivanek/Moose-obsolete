printing
printInnerXMLOn: aStream
	self hasChildren
		ifTrue: [
			self
				withNewXMLWriterOn: aStream
				do: [:writer |
					self writeInnerXMLOn: writer]]