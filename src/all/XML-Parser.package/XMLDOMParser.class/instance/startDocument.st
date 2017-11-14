handling - content
startDocument
	"inner XML parsers should ignore this event"
	self nodeStack size > 0
		ifFalse: [
			self
				document: self nodeFactory newDocument;
				pushNode: self document.

			self document configuration: self configuration]