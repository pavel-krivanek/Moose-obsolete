handling - content
startDocument
	self topNode ifNotNil: [^ self].

	self
		document: self nodeFactory newDocument;
		pushNode: self document.

	self document configuration: self configuration.