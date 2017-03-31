visiting
visitDocument: aDocument
	aDocument root
		ifNotNil: [:rootElement |
			self validator validateRootElement: rootElement name].
	super visitDocument: aDocument.
	self validator validateEndDocument.
	^ aDocument.